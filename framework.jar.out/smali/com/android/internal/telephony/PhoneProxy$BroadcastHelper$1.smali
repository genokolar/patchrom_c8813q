.class Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "PhoneProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;-><init>(Lcom/android/internal/telephony/PhoneProxy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;

.field final synthetic val$this$0:Lcom/android/internal/telephony/PhoneProxy;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;Lcom/android/internal/telephony/PhoneProxy;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper$1;->this$1:Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;

    iput-object p2, p0, Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper$1;->val$this$0:Lcom/android/internal/telephony/PhoneProxy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.ACTION_CHECK_PRE_POST_PAY"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "currentMccmnc"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, mccmnc:Ljava/lang/String;
    const-string v4, "currentImsi"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, imsi:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper$1;->this$1:Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;

    #getter for: Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;->simUtils:Lcom/android/internal/telephony/SIMUtils;
    invoke-static {v4}, Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;->access$000(Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;)Lcom/android/internal/telephony/SIMUtils;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper$1;->this$1:Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;->this$0:Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v3, v2, v5}, Lcom/android/internal/telephony/SIMUtils;->checkPrePostPay(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .end local v2           #imsi:Ljava/lang/String;
    .end local v3           #mccmnc:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.ACTION_CHECK_GLOBAL_ECC_NUM_PARAM"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "currentMccmnc"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #mccmnc:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper$1;->this$1:Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;

    #getter for: Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;->simUtils:Lcom/android/internal/telephony/SIMUtils;
    invoke-static {v4}, Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;->access$000(Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;)Lcom/android/internal/telephony/SIMUtils;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper$1;->this$1:Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;->this$0:Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/android/internal/telephony/SIMUtils;->checkGlobalEccNum(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .end local v3           #mccmnc:Ljava/lang/String;
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.ACTION_CHECK_GLOBAL_AUTO_MATCH_PARAM"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "currentImsi"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, currentImsi:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper$1;->this$1:Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;

    #getter for: Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;->simUtils:Lcom/android/internal/telephony/SIMUtils;
    invoke-static {v4}, Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;->access$000(Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;)Lcom/android/internal/telephony/SIMUtils;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper$1;->this$1:Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;->this$0:Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lcom/android/internal/telephony/SIMUtils;->checkGlobalAutoMatchParam(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .end local v0           #currentImsi:Ljava/lang/String;
    :cond_3
    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper$1;->this$1:Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;->this$0:Lcom/android/internal/telephony/PhoneProxy;

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper$1;->this$1:Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;->this$0:Lcom/android/internal/telephony/PhoneProxy;

    iget-boolean v4, v4, Lcom/android/internal/telephony/PhoneProxy;->IS_CHINA_TELECOM:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_SIM_STATE_CHANGED received by sub "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper$1;->this$1:Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;->this$0:Lcom/android/internal/telephony/PhoneProxy;

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/internal/telephony/PhoneProxy;->access$100(Ljava/lang/String;)V

    :try_start_0
    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v5

    if-eq v4, v5, :cond_4

    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v5

    if-ne v4, v5, :cond_0

    :cond_4
    const-string v4, "sub 0 uim and sim application state is ready, need request the new voice technology"

    #calls: Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/internal/telephony/PhoneProxy;->access$100(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper$1;->this$1:Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;->this$0:Lcom/android/internal/telephony/PhoneProxy;

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v5, p0, Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper$1;->this$1:Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;->this$0:Lcom/android/internal/telephony/PhoneProxy;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/PhoneProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->getVoiceRadioTechnology(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    .local v1, ex:Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", sub 0 sim/uim application state is not ready, no need request the new voice technology"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/internal/telephony/PhoneProxy;->access$100(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
