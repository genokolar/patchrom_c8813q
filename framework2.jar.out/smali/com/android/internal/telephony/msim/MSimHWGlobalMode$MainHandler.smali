.class final Lcom/android/internal/telephony/msim/MSimHWGlobalMode$MainHandler;
.super Landroid/os/Handler;
.source "MSimHWGlobalMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/msim/MSimHWGlobalMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/msim/MSimHWGlobalMode;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/msim/MSimHWGlobalMode;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/msim/MSimHWGlobalMode$MainHandler;->this$0:Lcom/android/internal/telephony/msim/MSimHWGlobalMode;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .parameter "msg"

    .prologue
    const/4 v12, 0x7

    const/4 v11, 0x4

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimHWGlobalMode$MainHandler;->this$0:Lcom/android/internal/telephony/msim/MSimHWGlobalMode;

    #getter for: Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->LOG_TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->access$000(Lcom/android/internal/telephony/msim/MSimHWGlobalMode;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "EVENT_GET_PREFERRED_NETWORK_TYPE"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    const/4 v4, -0x1

    .local v4, nType:I
    :goto_1
    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimHWGlobalMode$MainHandler;->this$0:Lcom/android/internal/telephony/msim/MSimHWGlobalMode;

    #getter for: Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->LOG_TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->access$000(Lcom/android/internal/telephony/msim/MSimHWGlobalMode;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "nType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mIfTypeToSet = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/msim/MSimHWGlobalMode$MainHandler;->this$0:Lcom/android/internal/telephony/msim/MSimHWGlobalMode;

    #getter for: Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->mIfTypeToSet:I
    invoke-static {v7}, Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->access$200(Lcom/android/internal/telephony/msim/MSimHWGlobalMode;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimHWGlobalMode$MainHandler;->this$0:Lcom/android/internal/telephony/msim/MSimHWGlobalMode;

    #getter for: Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->mIfTypeToSet:I
    invoke-static {v5}, Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->access$200(Lcom/android/internal/telephony/msim/MSimHWGlobalMode;)I

    move-result v5

    if-ne v5, v4, :cond_4

    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimHWGlobalMode$MainHandler;->this$0:Lcom/android/internal/telephony/msim/MSimHWGlobalMode;

    #getter for: Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->mIfTypeToSet:I
    invoke-static {v5}, Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->access$200(Lcom/android/internal/telephony/msim/MSimHWGlobalMode;)I

    move-result v5

    if-ne v12, v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimHWGlobalMode$MainHandler;->this$0:Lcom/android/internal/telephony/msim/MSimHWGlobalMode;

    invoke-virtual {v5, v10}, Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->setDualCardMode(I)V

    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimHWGlobalMode$MainHandler;->this$0:Lcom/android/internal/telephony/msim/MSimHWGlobalMode;

    invoke-virtual {v5, v8, v10, v9}, Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->setSubscriptionExt(IIZ)V

    goto :goto_0

    .end local v4           #nType:I
    :cond_1
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .restart local v4       #nType:I
    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimHWGlobalMode$MainHandler;->this$0:Lcom/android/internal/telephony/msim/MSimHWGlobalMode;

    #getter for: Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->mIfTypeToSet:I
    invoke-static {v5}, Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->access$200(Lcom/android/internal/telephony/msim/MSimHWGlobalMode;)I

    move-result v5

    if-ne v11, v5, :cond_3

    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimHWGlobalMode$MainHandler;->this$0:Lcom/android/internal/telephony/msim/MSimHWGlobalMode;

    invoke-virtual {v5, v8}, Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->setDualCardMode(I)V

    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimHWGlobalMode$MainHandler;->this$0:Lcom/android/internal/telephony/msim/MSimHWGlobalMode;

    invoke-virtual {v5, v8, v8, v9}, Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->setSubscriptionExt(IIZ)V

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimHWGlobalMode$MainHandler;->this$0:Lcom/android/internal/telephony/msim/MSimHWGlobalMode;

    #getter for: Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->mIfTypeToSet:I
    invoke-static {v5}, Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->access$200(Lcom/android/internal/telephony/msim/MSimHWGlobalMode;)I

    move-result v5

    if-ne v9, v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimHWGlobalMode$MainHandler;->this$0:Lcom/android/internal/telephony/msim/MSimHWGlobalMode;

    invoke-virtual {v5, v9}, Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->setDualCardMode(I)V

    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimHWGlobalMode$MainHandler;->this$0:Lcom/android/internal/telephony/msim/MSimHWGlobalMode;

    invoke-virtual {v5, v8, v9, v9}, Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->setSubscriptionExt(IIZ)V

    goto/16 :goto_0

    :cond_4
    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimHWGlobalMode$MainHandler;->this$0:Lcom/android/internal/telephony/msim/MSimHWGlobalMode;

    #getter for: Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->LOG_TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->access$000(Lcom/android/internal/telephony/msim/MSimHWGlobalMode;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "set prefMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/msim/MSimHWGlobalMode$MainHandler;->this$0:Lcom/android/internal/telephony/msim/MSimHWGlobalMode;

    #getter for: Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->mIfTypeToSet:I
    invoke-static {v7}, Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->access$200(Lcom/android/internal/telephony/msim/MSimHWGlobalMode;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimHWGlobalMode$MainHandler;->this$0:Lcom/android/internal/telephony/msim/MSimHWGlobalMode;

    #getter for: Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->mSubMgr:Lcom/android/internal/telephony/msim/SubscriptionManager;
    invoke-static {v5}, Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->access$400(Lcom/android/internal/telephony/msim/MSimHWGlobalMode;)Lcom/android/internal/telephony/msim/SubscriptionManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/msim/MSimHWGlobalMode$MainHandler;->this$0:Lcom/android/internal/telephony/msim/MSimHWGlobalMode;

    #getter for: Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->mIfTypeToSet:I
    invoke-static {v6}, Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->access$200(Lcom/android/internal/telephony/msim/MSimHWGlobalMode;)I

    move-result v6

    iget-object v7, p0, Lcom/android/internal/telephony/msim/MSimHWGlobalMode$MainHandler;->this$0:Lcom/android/internal/telephony/msim/MSimHWGlobalMode;

    #getter for: Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->mMainHandler:Lcom/android/internal/telephony/msim/MSimHWGlobalMode$MainHandler;
    invoke-static {v7}, Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->access$300(Lcom/android/internal/telephony/msim/MSimHWGlobalMode;)Lcom/android/internal/telephony/msim/MSimHWGlobalMode$MainHandler;

    move-result-object v7

    invoke-virtual {v7, v10}, Lcom/android/internal/telephony/msim/MSimHWGlobalMode$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v5, v8, v6, v7}, Lcom/android/internal/telephony/msim/SubscriptionManager;->setPreferredNetworkType(IILandroid/os/Message;)V

    goto/16 :goto_0

    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v4           #nType:I
    :pswitch_1
    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimHWGlobalMode$MainHandler;->this$0:Lcom/android/internal/telephony/msim/MSimHWGlobalMode;

    #getter for: Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->LOG_TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->access$000(Lcom/android/internal/telephony/msim/MSimHWGlobalMode;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "EVENT_SET_PREFERRED_NETWORK_TYPE"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_5

    const/4 v1, 0x0

    .local v1, bResult:Z
    :goto_2
    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimHWGlobalMode$MainHandler;->this$0:Lcom/android/internal/telephony/msim/MSimHWGlobalMode;

    #getter for: Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->LOG_TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->access$000(Lcom/android/internal/telephony/msim/MSimHWGlobalMode;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bResult = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mIfTypeToSet = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/msim/MSimHWGlobalMode$MainHandler;->this$0:Lcom/android/internal/telephony/msim/MSimHWGlobalMode;

    #getter for: Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->mIfTypeToSet:I
    invoke-static {v7}, Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->access$200(Lcom/android/internal/telephony/msim/MSimHWGlobalMode;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimHWGlobalMode$MainHandler;->this$0:Lcom/android/internal/telephony/msim/MSimHWGlobalMode;

    #getter for: Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->mIfTypeToSet:I
    invoke-static {v5}, Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->access$200(Lcom/android/internal/telephony/msim/MSimHWGlobalMode;)I

    move-result v5

    if-ne v12, v5, :cond_6

    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimHWGlobalMode$MainHandler;->this$0:Lcom/android/internal/telephony/msim/MSimHWGlobalMode;

    invoke-virtual {v5, v10}, Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->setDualCardMode(I)V

    invoke-static {v11}, Lcom/huawei/android/hwnv/HWNVFuncation;->setPrefMode(S)Z

    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimHWGlobalMode$MainHandler;->this$0:Lcom/android/internal/telephony/msim/MSimHWGlobalMode;

    invoke-virtual {v5, v8, v10, v9}, Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->setSubscriptionExt(IIZ)V

    goto/16 :goto_0

    .end local v1           #bResult:Z
    :cond_5
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .restart local v1       #bResult:Z
    goto :goto_2

    :cond_6
    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimHWGlobalMode$MainHandler;->this$0:Lcom/android/internal/telephony/msim/MSimHWGlobalMode;

    #getter for: Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->mIfTypeToSet:I
    invoke-static {v5}, Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->access$200(Lcom/android/internal/telephony/msim/MSimHWGlobalMode;)I

    move-result v5

    if-ne v11, v5, :cond_7

    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimHWGlobalMode$MainHandler;->this$0:Lcom/android/internal/telephony/msim/MSimHWGlobalMode;

    invoke-virtual {v5, v8}, Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->setDualCardMode(I)V

    const/16 v5, 0x13

    invoke-static {v5}, Lcom/huawei/android/hwnv/HWNVFuncation;->setPrefMode(S)Z

    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimHWGlobalMode$MainHandler;->this$0:Lcom/android/internal/telephony/msim/MSimHWGlobalMode;

    invoke-virtual {v5, v8, v8, v9}, Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->setSubscriptionExt(IIZ)V

    goto/16 :goto_0

    :cond_7
    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimHWGlobalMode$MainHandler;->this$0:Lcom/android/internal/telephony/msim/MSimHWGlobalMode;

    #getter for: Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->mIfTypeToSet:I
    invoke-static {v5}, Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->access$200(Lcom/android/internal/telephony/msim/MSimHWGlobalMode;)I

    move-result v5

    if-ne v9, v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimHWGlobalMode$MainHandler;->this$0:Lcom/android/internal/telephony/msim/MSimHWGlobalMode;

    invoke-virtual {v5, v9}, Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->setDualCardMode(I)V

    const/16 v5, 0xd

    invoke-static {v5}, Lcom/huawei/android/hwnv/HWNVFuncation;->setPrefMode(S)Z

    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimHWGlobalMode$MainHandler;->this$0:Lcom/android/internal/telephony/msim/MSimHWGlobalMode;

    invoke-virtual {v5, v8, v9, v9}, Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->setSubscriptionExt(IIZ)V

    goto/16 :goto_0

    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v1           #bResult:Z
    :pswitch_2
    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimHWGlobalMode$MainHandler;->this$0:Lcom/android/internal/telephony/msim/MSimHWGlobalMode;

    #getter for: Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->LOG_TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->access$000(Lcom/android/internal/telephony/msim/MSimHWGlobalMode;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "EVENT_SUBSCRIPTION_ACT_DONE1"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimHWGlobalMode$MainHandler;->this$0:Lcom/android/internal/telephony/msim/MSimHWGlobalMode;

    #getter for: Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->LOG_TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->access$000(Lcom/android/internal/telephony/msim/MSimHWGlobalMode;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bActSub1Pending = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/msim/MSimHWGlobalMode$MainHandler;->this$0:Lcom/android/internal/telephony/msim/MSimHWGlobalMode;

    #getter for: Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->bActSub1Pending:Z
    invoke-static {v7}, Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->access$500(Lcom/android/internal/telephony/msim/MSimHWGlobalMode;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimHWGlobalMode$MainHandler;->this$0:Lcom/android/internal/telephony/msim/MSimHWGlobalMode;

    #getter for: Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->bActSub1Pending:Z
    invoke-static {v5}, Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->access$500(Lcom/android/internal/telephony/msim/MSimHWGlobalMode;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimHWGlobalMode$MainHandler;->this$0:Lcom/android/internal/telephony/msim/MSimHWGlobalMode;

    #getter for: Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->mIfTypeToSet:I
    invoke-static {v5}, Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->access$200(Lcom/android/internal/telephony/msim/MSimHWGlobalMode;)I

    move-result v5

    if-ne v12, v5, :cond_8

    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimHWGlobalMode$MainHandler;->this$0:Lcom/android/internal/telephony/msim/MSimHWGlobalMode;

    #setter for: Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->bActSub1Pending:Z
    invoke-static {v5, v8}, Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->access$502(Lcom/android/internal/telephony/msim/MSimHWGlobalMode;Z)Z

    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimHWGlobalMode$MainHandler;->this$0:Lcom/android/internal/telephony/msim/MSimHWGlobalMode;

    invoke-virtual {v5, v10}, Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->setDualCardMode(I)V

    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimHWGlobalMode$MainHandler;->this$0:Lcom/android/internal/telephony/msim/MSimHWGlobalMode;

    #getter for: Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->mSubMgr:Lcom/android/internal/telephony/msim/SubscriptionManager;
    invoke-static {v5}, Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->access$400(Lcom/android/internal/telephony/msim/MSimHWGlobalMode;)Lcom/android/internal/telephony/msim/SubscriptionManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/msim/MSimHWGlobalMode$MainHandler;->this$0:Lcom/android/internal/telephony/msim/MSimHWGlobalMode;

    #calls: Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->getAppIndex(II)I
    invoke-static {v6, v8, v9}, Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->access$600(Lcom/android/internal/telephony/msim/MSimHWGlobalMode;II)I

    move-result v6

    sget-object v7, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/internal/telephony/msim/SubscriptionManager;->setUiccSubscriptionExt(ILcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;Landroid/os/Message;)V

    goto/16 :goto_0

    :cond_8
    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimHWGlobalMode$MainHandler;->this$0:Lcom/android/internal/telephony/msim/MSimHWGlobalMode;

    #getter for: Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->mIfTypeToSet:I
    invoke-static {v5}, Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->access$200(Lcom/android/internal/telephony/msim/MSimHWGlobalMode;)I

    move-result v5

    if-ne v11, v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimHWGlobalMode$MainHandler;->this$0:Lcom/android/internal/telephony/msim/MSimHWGlobalMode;

    #getter for: Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->LOG_TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->access$000(Lcom/android/internal/telephony/msim/MSimHWGlobalMode;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "deactivate card1\'s gsm subscription"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimHWGlobalMode$MainHandler;->this$0:Lcom/android/internal/telephony/msim/MSimHWGlobalMode;

    #getter for: Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->mSubMgr:Lcom/android/internal/telephony/msim/SubscriptionManager;
    invoke-static {v5}, Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->access$400(Lcom/android/internal/telephony/msim/MSimHWGlobalMode;)Lcom/android/internal/telephony/msim/SubscriptionManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/msim/MSimHWGlobalMode$MainHandler;->this$0:Lcom/android/internal/telephony/msim/MSimHWGlobalMode;

    #calls: Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->getAppIndex(II)I
    invoke-static {v6, v8, v9}, Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->access$600(Lcom/android/internal/telephony/msim/MSimHWGlobalMode;II)I

    move-result v6

    sget-object v7, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_DEACTIVATE:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/internal/telephony/msim/SubscriptionManager;->setUiccSubscriptionExt(ILcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;Landroid/os/Message;)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimHWGlobalMode$MainHandler;->this$0:Lcom/android/internal/telephony/msim/MSimHWGlobalMode;

    #getter for: Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->LOG_TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->access$000(Lcom/android/internal/telephony/msim/MSimHWGlobalMode;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "EVENT_SUBSCRIPTION_DEACT_DONE1"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimHWGlobalMode$MainHandler;->this$0:Lcom/android/internal/telephony/msim/MSimHWGlobalMode;

    #getter for: Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->bDeactSub1Pending:Z
    invoke-static {v5}, Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->access$700(Lcom/android/internal/telephony/msim/MSimHWGlobalMode;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimHWGlobalMode$MainHandler;->this$0:Lcom/android/internal/telephony/msim/MSimHWGlobalMode;

    #getter for: Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->mIfTypeToSet:I
    invoke-static {v5}, Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->access$200(Lcom/android/internal/telephony/msim/MSimHWGlobalMode;)I

    move-result v5

    if-ne v12, v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimHWGlobalMode$MainHandler;->this$0:Lcom/android/internal/telephony/msim/MSimHWGlobalMode;

    #getter for: Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->LOG_TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->access$000(Lcom/android/internal/telephony/msim/MSimHWGlobalMode;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "EVENT_SUBSCRIPTION_DEACT_DONE1"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimHWGlobalMode$MainHandler;->this$0:Lcom/android/internal/telephony/msim/MSimHWGlobalMode;

    #setter for: Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->bDeactSub1Pending:Z
    invoke-static {v5, v8}, Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->access$702(Lcom/android/internal/telephony/msim/MSimHWGlobalMode;Z)Z

    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimHWGlobalMode$MainHandler;->this$0:Lcom/android/internal/telephony/msim/MSimHWGlobalMode;

    #getter for: Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->mSubMgr:Lcom/android/internal/telephony/msim/SubscriptionManager;
    invoke-static {v5}, Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->access$400(Lcom/android/internal/telephony/msim/MSimHWGlobalMode;)Lcom/android/internal/telephony/msim/SubscriptionManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/msim/MSimHWGlobalMode$MainHandler;->this$0:Lcom/android/internal/telephony/msim/MSimHWGlobalMode;

    #calls: Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->getAppIndex(II)I
    invoke-static {v6, v8, v9}, Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->access$600(Lcom/android/internal/telephony/msim/MSimHWGlobalMode;II)I

    move-result v6

    sget-object v7, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_DEACTIVATE:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/internal/telephony/msim/SubscriptionManager;->setUiccSubscriptionExt(ILcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;Landroid/os/Message;)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimHWGlobalMode$MainHandler;->this$0:Lcom/android/internal/telephony/msim/MSimHWGlobalMode;

    #getter for: Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->LOG_TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->access$000(Lcom/android/internal/telephony/msim/MSimHWGlobalMode;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "EVENT_SUBSCRIPTION_DEACT_DONE2"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimHWGlobalMode$MainHandler;->this$0:Lcom/android/internal/telephony/msim/MSimHWGlobalMode;

    #getter for: Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->LOG_TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->access$000(Lcom/android/internal/telephony/msim/MSimHWGlobalMode;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bDeactSub2Pending = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/msim/MSimHWGlobalMode$MainHandler;->this$0:Lcom/android/internal/telephony/msim/MSimHWGlobalMode;

    #getter for: Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->bDeactSub2Pending:Z
    invoke-static {v7}, Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->access$800(Lcom/android/internal/telephony/msim/MSimHWGlobalMode;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimHWGlobalMode$MainHandler;->this$0:Lcom/android/internal/telephony/msim/MSimHWGlobalMode;

    #getter for: Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->bDeactSub2Pending:Z
    invoke-static {v5}, Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->access$800(Lcom/android/internal/telephony/msim/MSimHWGlobalMode;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimHWGlobalMode$MainHandler;->this$0:Lcom/android/internal/telephony/msim/MSimHWGlobalMode;

    invoke-virtual {v5}, Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->getAutoDeactSub1Flag()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimHWGlobalMode$MainHandler;->this$0:Lcom/android/internal/telephony/msim/MSimHWGlobalMode;

    #setter for: Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->bDeactSub2Pending:Z
    invoke-static {v5, v8}, Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->access$802(Lcom/android/internal/telephony/msim/MSimHWGlobalMode;Z)Z

    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimHWGlobalMode$MainHandler;->this$0:Lcom/android/internal/telephony/msim/MSimHWGlobalMode;

    const/4 v6, -0x1

    invoke-virtual {v5, v9, v6, v8}, Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->setSubscriptionExt(IIZ)V

    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimHWGlobalMode$MainHandler;->this$0:Lcom/android/internal/telephony/msim/MSimHWGlobalMode;

    invoke-virtual {v5, v8, v10, v9}, Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->setSubscriptionExt(IIZ)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimHWGlobalMode$MainHandler;->this$0:Lcom/android/internal/telephony/msim/MSimHWGlobalMode;

    #getter for: Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->LOG_TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->access$000(Lcom/android/internal/telephony/msim/MSimHWGlobalMode;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "EVENT_SUBSCRIPTION_SET_DONE"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimHWGlobalMode$MainHandler;->this$0:Lcom/android/internal/telephony/msim/MSimHWGlobalMode;

    #setter for: Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->mbSetSubscriptionStatus:Z
    invoke-static {v5, v8}, Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->access$902(Lcom/android/internal/telephony/msim/MSimHWGlobalMode;Z)Z

    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimHWGlobalMode$MainHandler;->this$0:Lcom/android/internal/telephony/msim/MSimHWGlobalMode;

    #getter for: Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->mbPendingIntent:Z
    invoke-static {v5}, Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->access$1000(Lcom/android/internal/telephony/msim/MSimHWGlobalMode;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimHWGlobalMode$MainHandler;->this$0:Lcom/android/internal/telephony/msim/MSimHWGlobalMode;

    #getter for: Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->LOG_TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->access$000(Lcom/android/internal/telephony/msim/MSimHWGlobalMode;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "there is pending 2nd-sel-net intent need be proceed!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimHWGlobalMode$MainHandler;->this$0:Lcom/android/internal/telephony/msim/MSimHWGlobalMode;

    #setter for: Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->mbPendingIntent:Z
    invoke-static {v5, v8}, Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->access$1002(Lcom/android/internal/telephony/msim/MSimHWGlobalMode;Z)Z

    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimHWGlobalMode$MainHandler;->this$0:Lcom/android/internal/telephony/msim/MSimHWGlobalMode;

    #calls: Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->checkPlmnChanged()V
    invoke-static {v5}, Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->access$1100(Lcom/android/internal/telephony/msim/MSimHWGlobalMode;)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimHWGlobalMode$MainHandler;->this$0:Lcom/android/internal/telephony/msim/MSimHWGlobalMode;

    #getter for: Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->LOG_TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->access$000(Lcom/android/internal/telephony/msim/MSimHWGlobalMode;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "EVENT_SUBSCRIPTION_ACT_DONE2"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimHWGlobalMode$MainHandler;->this$0:Lcom/android/internal/telephony/msim/MSimHWGlobalMode;

    invoke-virtual {v5}, Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->getAutoDeactSub1Flag()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimHWGlobalMode$MainHandler;->this$0:Lcom/android/internal/telephony/msim/MSimHWGlobalMode;

    invoke-virtual {v5, v8}, Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->setAutoDeactSub1Flag(Z)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimHWGlobalMode$MainHandler;->this$0:Lcom/android/internal/telephony/msim/MSimHWGlobalMode;

    #getter for: Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->LOG_TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->access$000(Lcom/android/internal/telephony/msim/MSimHWGlobalMode;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "EVENT_DELAY_RECEIVE_INTENT"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .local v3, filter:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.START_SEC_NET_SEL"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimHWGlobalMode$MainHandler;->this$0:Lcom/android/internal/telephony/msim/MSimHWGlobalMode;

    #getter for: Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->access$100(Lcom/android/internal/telephony/msim/MSimHWGlobalMode;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/msim/MSimHWGlobalMode$MainHandler;->this$0:Lcom/android/internal/telephony/msim/MSimHWGlobalMode;

    #getter for: Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->mSecNetSelIntentReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v6}, Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->access$1200(Lcom/android/internal/telephony/msim/MSimHWGlobalMode;)Landroid/content/BroadcastReceiver;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimHWGlobalMode$MainHandler;->this$0:Lcom/android/internal/telephony/msim/MSimHWGlobalMode;

    const/4 v6, 0x1

    #setter for: Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->mIsSecNetSelReceiverRegistered:Z
    invoke-static {v5, v6}, Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->access$1302(Lcom/android/internal/telephony/msim/MSimHWGlobalMode;Z)Z

    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimHWGlobalMode$MainHandler;->this$0:Lcom/android/internal/telephony/msim/MSimHWGlobalMode;

    #getter for: Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->LOG_TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->access$000(Lcom/android/internal/telephony/msim/MSimHWGlobalMode;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "start receive ACTION_START_SEC_NET_SEL"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .end local v3           #filter:Landroid/content/IntentFilter;
    :catch_0
    move-exception v2

    .local v2, ex:Ljava/lang/Exception;
    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimHWGlobalMode$MainHandler;->this$0:Lcom/android/internal/telephony/msim/MSimHWGlobalMode;

    #getter for: Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->LOG_TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->access$000(Lcom/android/internal/telephony/msim/MSimHWGlobalMode;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception happen, exception = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Exception;
    :pswitch_8
    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimHWGlobalMode$MainHandler;->this$0:Lcom/android/internal/telephony/msim/MSimHWGlobalMode;

    #getter for: Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->LOG_TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->access$000(Lcom/android/internal/telephony/msim/MSimHWGlobalMode;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "EVENT_DELAY_SECOND_SEL_NETWORK"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimHWGlobalMode$MainHandler;->this$0:Lcom/android/internal/telephony/msim/MSimHWGlobalMode;

    #setter for: Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->mbPendingSecondSelNetwork:Z
    invoke-static {v5, v8}, Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->access$1402(Lcom/android/internal/telephony/msim/MSimHWGlobalMode;Z)Z

    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimHWGlobalMode$MainHandler;->this$0:Lcom/android/internal/telephony/msim/MSimHWGlobalMode;

    #calls: Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->process2ndSelNetwork()V
    invoke-static {v5}, Lcom/android/internal/telephony/msim/MSimHWGlobalMode;->access$1500(Lcom/android/internal/telephony/msim/MSimHWGlobalMode;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
