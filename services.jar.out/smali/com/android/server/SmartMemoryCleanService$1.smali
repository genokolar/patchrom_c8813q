.class Lcom/android/server/SmartMemoryCleanService$1;
.super Landroid/os/Handler;
.source "SmartMemoryCleanService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SmartMemoryCleanService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/SmartMemoryCleanService;


# direct methods
.method constructor <init>(Lcom/android/server/SmartMemoryCleanService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/SmartMemoryCleanService$1;->this$0:Lcom/android/server/SmartMemoryCleanService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/android/server/SmartMemoryCleanService;->access$000()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "SmartMemoryCleanService"

    const-string v2, "SmartMemoryCleanService.handleMessage: SMCS OB timer out"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/android/server/SmartMemoryCleanService$1;->this$0:Lcom/android/server/SmartMemoryCleanService;

    #calls: Lcom/android/server/SmartMemoryCleanService;->handleSMCSTimerOut()V
    invoke-static {v1}, Lcom/android/server/SmartMemoryCleanService;->access$100(Lcom/android/server/SmartMemoryCleanService;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SmartMemoryCleanService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SmartMemoryCleanService.handleMessage: catch exception "

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

    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    invoke-static {}, Lcom/android/server/SmartMemoryCleanService;->access$000()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "SmartMemoryCleanService"

    const-string v2, "SmartMemoryCleanService.handleMessage: trim round time out"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v1, p0, Lcom/android/server/SmartMemoryCleanService$1;->this$0:Lcom/android/server/SmartMemoryCleanService;

    #calls: Lcom/android/server/SmartMemoryCleanService;->smartTrimHandleSTPEvents()V
    invoke-static {v1}, Lcom/android/server/SmartMemoryCleanService;->access$200(Lcom/android/server/SmartMemoryCleanService;)V

    iget-object v1, p0, Lcom/android/server/SmartMemoryCleanService$1;->this$0:Lcom/android/server/SmartMemoryCleanService;

    #calls: Lcom/android/server/SmartMemoryCleanService;->smartTrimProcess()V
    invoke-static {v1}, Lcom/android/server/SmartMemoryCleanService;->access$300(Lcom/android/server/SmartMemoryCleanService;)V

    iget-object v1, p0, Lcom/android/server/SmartMemoryCleanService$1;->this$0:Lcom/android/server/SmartMemoryCleanService;

    invoke-virtual {v1}, Lcom/android/server/SmartMemoryCleanService;->isTrimApkStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/SmartMemoryCleanService$1;->this$0:Lcom/android/server/SmartMemoryCleanService;

    #calls: Lcom/android/server/SmartMemoryCleanService;->startTrimRoundTimer()V
    invoke-static {v1}, Lcom/android/server/SmartMemoryCleanService;->access$400(Lcom/android/server/SmartMemoryCleanService;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
