.class final Lcom/android/server/SmartMemoryCleanService$TrimRoundTimerCB;
.super Ljava/util/TimerTask;
.source "SmartMemoryCleanService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SmartMemoryCleanService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TrimRoundTimerCB"
.end annotation


# static fields
.field private static final TAG_TRIM_ROUND:Ljava/lang/String; = "TrimRoundTimerCB"


# instance fields
.field final synthetic this$0:Lcom/android/server/SmartMemoryCleanService;


# direct methods
.method constructor <init>(Lcom/android/server/SmartMemoryCleanService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/SmartMemoryCleanService$TrimRoundTimerCB;->this$0:Lcom/android/server/SmartMemoryCleanService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    :try_start_0
    invoke-static {}, Lcom/android/server/SmartMemoryCleanService;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "TrimRoundTimerCB"

    const-string v2, "TrimRoundTimerCB.run: trim round timer time out"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/SmartMemoryCleanService$TrimRoundTimerCB;->this$0:Lcom/android/server/SmartMemoryCleanService;

    #getter for: Lcom/android/server/SmartMemoryCleanService;->mSMCSHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/SmartMemoryCleanService;->access$500(Lcom/android/server/SmartMemoryCleanService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v1, "TrimRoundTimerCB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TrimRoundTimerCB.run: catch exception: "

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
