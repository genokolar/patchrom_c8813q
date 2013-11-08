.class Lcom/android/server/SmartMemoryCleanService$SMCSTimerTask;
.super Ljava/util/TimerTask;
.source "SmartMemoryCleanService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SmartMemoryCleanService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SMCSTimerTask"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SMCSTimerTask"


# instance fields
.field final synthetic this$0:Lcom/android/server/SmartMemoryCleanService;


# direct methods
.method constructor <init>(Lcom/android/server/SmartMemoryCleanService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/SmartMemoryCleanService$SMCSTimerTask;->this$0:Lcom/android/server/SmartMemoryCleanService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    invoke-static {}, Lcom/android/server/SmartMemoryCleanService;->access$000()Z

    move-result v5

    if-eqz v5, :cond_0

    const-wide/16 v0, -0x1

    .local v0, availMem:J
    const/4 v2, 0x0

    .local v2, memInfo:Landroid/app/ActivityManager$MemoryInfo;
    const/4 v3, 0x0

    .local v3, memInfoReader:Lcom/android/internal/util/MemInfoReader;
    const/4 v4, -0x1

    .local v4, power_on_time:I
    new-instance v2, Landroid/app/ActivityManager$MemoryInfo;

    .end local v2           #memInfo:Landroid/app/ActivityManager$MemoryInfo;
    invoke-direct {v2}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .restart local v2       #memInfo:Landroid/app/ActivityManager$MemoryInfo;
    iget-object v5, p0, Lcom/android/server/SmartMemoryCleanService$SMCSTimerTask;->this$0:Lcom/android/server/SmartMemoryCleanService;

    #getter for: Lcom/android/server/SmartMemoryCleanService;->mAMSInstance:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v5}, Lcom/android/server/SmartMemoryCleanService;->access$600(Lcom/android/server/SmartMemoryCleanService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/server/am/ActivityManagerService;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    new-instance v3, Lcom/android/internal/util/MemInfoReader;

    .end local v3           #memInfoReader:Lcom/android/internal/util/MemInfoReader;
    invoke-direct {v3}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .restart local v3       #memInfoReader:Lcom/android/internal/util/MemInfoReader;
    invoke-virtual {v3}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    invoke-virtual {v3}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v5

    invoke-virtual {v3}, Lcom/android/internal/util/MemInfoReader;->getCachedSize()J

    move-result-wide v7

    add-long/2addr v5, v7

    iget-wide v7, v2, Landroid/app/ActivityManager$MemoryInfo;->secondaryServerThreshold:J

    sub-long v0, v5, v7

    iget-object v5, p0, Lcom/android/server/SmartMemoryCleanService$SMCSTimerTask;->this$0:Lcom/android/server/SmartMemoryCleanService;

    #calls: Lcom/android/server/SmartMemoryCleanService;->getCurPowerOnTime()I
    invoke-static {v5}, Lcom/android/server/SmartMemoryCleanService;->access$700(Lcom/android/server/SmartMemoryCleanService;)I

    move-result v4

    const-string v5, "SMCSTimerTask"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SMCSTimerTask.run: availMem "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/SmartMemoryCleanService$SMCSTimerTask;->this$0:Lcom/android/server/SmartMemoryCleanService;

    #getter for: Lcom/android/server/SmartMemoryCleanService;->mSTMemLowerLimit:J
    invoke-static {v7}, Lcom/android/server/SmartMemoryCleanService;->access$800(Lcom/android/server/SmartMemoryCleanService;)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/SmartMemoryCleanService$SMCSTimerTask;->this$0:Lcom/android/server/SmartMemoryCleanService;

    #getter for: Lcom/android/server/SmartMemoryCleanService;->mSTMemUpperLimit:J
    invoke-static {v7}, Lcom/android/server/SmartMemoryCleanService;->access$900(Lcom/android/server/SmartMemoryCleanService;)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "SMCSTimerTask"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SMCSTimerTask.run: last time "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #availMem:J
    .end local v2           #memInfo:Landroid/app/ActivityManager$MemoryInfo;
    .end local v3           #memInfoReader:Lcom/android/internal/util/MemInfoReader;
    .end local v4           #power_on_time:I
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/SmartMemoryCleanService$SMCSTimerTask;->startTrim()V

    return-void
.end method

.method startTrim()V
    .locals 4

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/android/server/SmartMemoryCleanService$SMCSTimerTask;->this$0:Lcom/android/server/SmartMemoryCleanService;

    #getter for: Lcom/android/server/SmartMemoryCleanService;->mSMCSHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/SmartMemoryCleanService;->access$500(Lcom/android/server/SmartMemoryCleanService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SMCSTimerTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SMCSTimerTask.startTrim: catch exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
