.class public Lcom/android/internal/telephony/msim/SubscriptionManager;
.super Landroid/os/Handler;
.source "SubscriptionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;,
        Lcom/android/internal/telephony/msim/SubscriptionManager$PhoneSubscriptionInfo;,
        Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;
    }
.end annotation


# static fields
.field private static final EVENT_ALL_CARD_INFO_AVAILABLE:I = 0x2

.field private static final EVENT_ALL_DATA_DISCONNECTED:I = 0x8

.field private static final EVENT_CARD_INFO_AVAILABLE:I = 0x0

.field private static final EVENT_CARD_INFO_NOT_AVAILABLE:I = 0x1

.field private static final EVENT_CLEANUP_DATA_CONNECTION_DONE:I = 0x7

.field private static final EVENT_DISABLE_DATA_CONNECTION_DONE_DSDA:I = 0x66

.field private static final EVENT_PROCESS_AVAILABLE_CARDS:I = 0xb

.field private static final EVENT_QUERY_PREF_NET_TYPE:I = 0x67

.field private static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE:I = 0xa

.field private static final EVENT_RADIO_ON:I = 0x9

.field private static final EVENT_RADIO_STATE_CHANGED:I = 0x65

.field private static final EVENT_SET_DATA_SUBSCRIPTION_DONE:I = 0x6

.field private static final EVENT_SET_PREF_NET_TYPE_DONE:I = 0x68

.field private static final EVENT_SET_SUBSCRIPTION_GLOBAL_MODE:I = 0x69

.field private static final EVENT_SET_SUBSCRIPTION_MODE_DONE:I = 0x3

.field private static final EVENT_SET_UICC_SUBSCRIPTION_DONE:I = 0x4

.field private static final EVENT_SET_UICC_SUBSCRIPTION_EXT_DONE:I = 0xc9

.field private static final EVENT_SUBSCRIPTION_STATUS_CHANGED:I = 0x5

.field static final HUAWEI_DSDA:Ljava/lang/String; = "ro.config.hw_dsda"

.field static final LOG_TAG:Ljava/lang/String; = "SubscriptionManager"

.field public static NUM_SUBSCRIPTIONS:I = 0x0

.field public static final SUB_ACTIVATE_FAILED:Ljava/lang/String; = "ACTIVATE FAILED"

.field public static final SUB_ACTIVATE_NOT_SUPPORTED:Ljava/lang/String; = "ACTIVATE NOT SUPPORTED"

.field public static final SUB_ACTIVATE_SUCCESS:Ljava/lang/String; = "ACTIVATE SUCCESS"

.field public static final SUB_DEACTIVATE_FAILED:Ljava/lang/String; = "DEACTIVATE FAILED"

.field public static final SUB_DEACTIVATE_NOT_SUPPORTED:Ljava/lang/String; = "DEACTIVATE NOT SUPPORTED"

.field public static final SUB_DEACTIVATE_SUCCESS:Ljava/lang/String; = "DEACTIVATE SUCCESS"

.field private static SUB_ID:Ljava/lang/String; = null

.field public static final SUB_NOT_CHANGED:Ljava/lang/String; = "NO CHANGE IN SUBSCRIPTION"

.field private static SUB_STATE:Ljava/lang/String; = null

.field private static final SUB_STATUS_ACTIVATED:I = 0x1

.field private static final SUB_STATUS_DEACTIVATED:I

.field private static USER_PREF_SUB_FIELDS:I

.field private static sSubscriptionManager:Lcom/android/internal/telephony/msim/SubscriptionManager;


# instance fields
.field private IS_CHINA_TELECOM:Z

.field private bSupportGlobalMode:Z

.field private mActivatePending:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;",
            "Lcom/android/internal/telephony/msim/Subscription;",
            ">;"
        }
    .end annotation
.end field

.field private mAllCardsStatusAvailable:Z

.field private mCardInfoAvailable:[Z

.field private mCardSubMgr:Lcom/android/internal/telephony/msim/CardSubscriptionManager;

.field private mCi:[Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mCurrentDds:I

.field private mCurrentSubscriptions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;",
            "Lcom/android/internal/telephony/msim/SubscriptionManager$PhoneSubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDataActive:Z

.field private mDeactivatePending:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;",
            "Lcom/android/internal/telephony/msim/Subscription;",
            ">;"
        }
    .end annotation
.end field

.field private mDesiredRadioStates:[Lcom/android/internal/telephony/CommandsInterface$RadioState;

.field private mDisableDdsInProgress:Z

.field private mGetPrefNetTypeMsg:Landroid/os/Message;

.field private mHuaweiDSDA:Z

.field private mIsNewCard:[Z

.field private mOperationDones:[Z

.field private mQueuedDds:I

.field private mRadioOn:[Z

.field private mSetDdsCompleteMsg:Landroid/os/Message;

.field private mSetDdsRequired:Z

.field private mSetPrefNetTypeMsg:Landroid/os/Message;

.field private mSetSubsModeRequired:Z

.field private mSetSubscriptionInProgress:Z

.field private mSetSubscriptionRegistrants:Landroid/os/RegistrantList;

.field private mSetUiccSubExtMsg:Landroid/os/Message;

.field private mSubActivatedRegistrants:[Landroid/os/RegistrantList;

.field private mSubActivatedRegistrantsOnSlot:[Landroid/os/RegistrantList;

.field private mSubDeactivatedRegistrants:[Landroid/os/RegistrantList;

.field private mSubDeactivatedRegistrantsOnSlot:[Landroid/os/RegistrantList;

.field private mSubResult:[Ljava/lang/String;

.field private mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

.field private mcardDefault:[Z

.field private mlastIccIds:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "state"

    sput-object v0, Lcom/android/internal/telephony/msim/SubscriptionManager;->SUB_STATE:Ljava/lang/String;

    const-string v0, "subID"

    sput-object v0, Lcom/android/internal/telephony/msim/SubscriptionManager;->SUB_ID:Ljava/lang/String;

    const/4 v0, 0x2

    sput v0, Lcom/android/internal/telephony/msim/SubscriptionManager;->NUM_SUBSCRIPTIONS:I

    const/16 v0, 0x8

    sput v0, Lcom/android/internal/telephony/msim/SubscriptionManager;->USER_PREF_SUB_FIELDS:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccController;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 11
    .parameter "context"
    .parameter "uiccController"
    .parameter "ci"

    .prologue
    const/4 v10, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v9, 0x2

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-array v5, v9, [Ljava/lang/String;

    aput-object v10, v5, v7

    aput-object v10, v5, v6

    iput-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mlastIccIds:[Ljava/lang/String;

    new-array v5, v9, [Z

    fill-array-data v5, :array_0

    iput-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mcardDefault:[Z

    new-array v5, v9, [Lcom/android/internal/telephony/CommandsInterface$RadioState;

    sget-object v8, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    aput-object v8, v5, v7

    sget-object v8, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    aput-object v8, v5, v6

    iput-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDesiredRadioStates:[Lcom/android/internal/telephony/CommandsInterface$RadioState;

    new-array v5, v9, [Z

    fill-array-data v5, :array_1

    iput-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mOperationDones:[Z

    iput-boolean v7, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mHuaweiDSDA:Z

    const-string v5, "ro.config.hw_opta"

    const-string v8, "0"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "92"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "ro.config.hw_optb"

    const-string v8, "0"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "156"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v6

    :goto_0
    iput-boolean v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->IS_CHINA_TELECOM:Z

    const-string v5, "ro.config.cdma.globalMode"

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->bSupportGlobalMode:Z

    iput-object v10, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    iput-boolean v6, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetSubsModeRequired:Z

    new-array v5, v9, [Z

    fill-array-data v5, :array_2

    iput-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCardInfoAvailable:[Z

    iput-boolean v7, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mAllCardsStatusAvailable:Z

    iput-boolean v6, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetDdsRequired:Z

    iput-boolean v7, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetSubscriptionInProgress:Z

    iput-boolean v7, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDataActive:Z

    new-array v5, v9, [Z

    fill-array-data v5, :array_3

    iput-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mIsNewCard:[Z

    new-instance v5, Landroid/os/RegistrantList;

    invoke-direct {v5}, Landroid/os/RegistrantList;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetSubscriptionRegistrants:Landroid/os/RegistrantList;

    sget v5, Lcom/android/internal/telephony/msim/SubscriptionManager;->NUM_SUBSCRIPTIONS:I

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSubResult:[Ljava/lang/String;

    new-array v5, v9, [Z

    fill-array-data v5, :array_4

    iput-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mRadioOn:[Z

    const-string v5, "Constructor - Enter"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getUserPreferredSubs()V

    invoke-static {p1, p2, p3}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->getInstance(Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccController;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/msim/CardSubscriptionManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCardSubMgr:Lcom/android/internal/telephony/msim/CardSubscriptionManager;

    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v9, :cond_1

    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCardSubMgr:Lcom/android/internal/telephony/msim/CardSubscriptionManager;

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v1, p0, v7, v8}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->registerForCardInfoAvailable(ILandroid/os/Handler;ILjava/lang/Object;)V

    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCardSubMgr:Lcom/android/internal/telephony/msim/CardSubscriptionManager;

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v1, p0, v6, v8}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->registerForCardInfoUnavailable(ILandroid/os/Handler;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1           #i:I
    :cond_0
    move v5, v7

    goto :goto_0

    .restart local v1       #i:I
    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCardSubMgr:Lcom/android/internal/telephony/msim/CardSubscriptionManager;

    invoke-virtual {v5, p0, v9, v10}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->registerForAllCardsInfoAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object p3, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    :goto_2
    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    array-length v5, v5

    if-ge v1, v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v5, v5, v1

    const/4 v6, 0x5

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v5, p0, v6, v8}, Lcom/android/internal/telephony/CommandsInterface;->registerForSubscriptionStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v5, v5, v1

    const/16 v6, 0xa

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v5, p0, v6, v8}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v5, v5, v1

    const/16 v6, 0x9

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v5, p0, v6, v8}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v5, v5, v1

    const/16 v6, 0x65

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v5, p0, v6, v8}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    new-array v5, v9, [Landroid/os/RegistrantList;

    iput-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSubDeactivatedRegistrants:[Landroid/os/RegistrantList;

    new-array v5, v9, [Landroid/os/RegistrantList;

    iput-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSubActivatedRegistrants:[Landroid/os/RegistrantList;

    new-array v5, v9, [Landroid/os/RegistrantList;

    iput-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSubDeactivatedRegistrantsOnSlot:[Landroid/os/RegistrantList;

    new-array v5, v9, [Landroid/os/RegistrantList;

    iput-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSubActivatedRegistrantsOnSlot:[Landroid/os/RegistrantList;

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v9, :cond_3

    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSubDeactivatedRegistrants:[Landroid/os/RegistrantList;

    new-instance v6, Landroid/os/RegistrantList;

    invoke-direct {v6}, Landroid/os/RegistrantList;-><init>()V

    aput-object v6, v5, v1

    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSubActivatedRegistrants:[Landroid/os/RegistrantList;

    new-instance v6, Landroid/os/RegistrantList;

    invoke-direct {v6}, Landroid/os/RegistrantList;-><init>()V

    aput-object v6, v5, v1

    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSubDeactivatedRegistrantsOnSlot:[Landroid/os/RegistrantList;

    new-instance v6, Landroid/os/RegistrantList;

    invoke-direct {v6}, Landroid/os/RegistrantList;-><init>()V

    aput-object v6, v5, v1

    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSubActivatedRegistrantsOnSlot:[Landroid/os/RegistrantList;

    new-instance v6, Landroid/os/RegistrantList;

    invoke-direct {v6}, Landroid/os/RegistrantList;-><init>()V

    aput-object v6, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mActivatePending:Ljava/util/HashMap;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDeactivatePending:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v0

    .local v0, arr$:[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_4
    if-ge v2, v3, :cond_4

    aget-object v4, v0, v2

    .local v4, t:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mActivatePending:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDeactivatePending:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .end local v4           #t:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    :cond_4
    invoke-static {}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->getDataSubscription()I

    move-result v5

    iput v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "In MSimProxyManager constructor current active dds is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentSubscriptions:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v3, :cond_5

    aget-object v4, v0, v2

    .restart local v4       #t:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentSubscriptions:Ljava/util/HashMap;

    new-instance v6, Lcom/android/internal/telephony/msim/SubscriptionManager$PhoneSubscriptionInfo;

    invoke-direct {v6, p0}, Lcom/android/internal/telephony/msim/SubscriptionManager$PhoneSubscriptionInfo;-><init>(Lcom/android/internal/telephony/msim/SubscriptionManager;)V

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .end local v4           #t:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    :cond_5
    const-string v5, "ro.config.hw_dsda"

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mHuaweiDSDA:Z

    const-string v5, "Constructor - Exit"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    return-void

    :array_0
    .array-data 0x1
        0x0t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 0x1
        0x1t
        0x1t
    .end array-data

    nop

    :array_2
    .array-data 0x1
        0x0t
        0x0t
    .end array-data

    nop

    :array_3
    .array-data 0x1
        0x0t
        0x0t
    .end array-data

    nop

    :array_4
    .array-data 0x1
        0x0t
        0x0t
    .end array-data
.end method

.method private getCurrentSubscription(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/msim/Subscription;
    .locals 1
    .parameter "subId"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentSubscriptions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/msim/SubscriptionManager$PhoneSubscriptionInfo;

    iget-object v0, v0, Lcom/android/internal/telephony/msim/SubscriptionManager$PhoneSubscriptionInfo;->sub:Lcom/android/internal/telephony/msim/Subscription;

    return-object v0
.end method

.method private getCurrentSubscriptionReadiness(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)Z
    .locals 1
    .parameter "subId"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentSubscriptions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/msim/SubscriptionManager$PhoneSubscriptionInfo;

    iget-boolean v0, v0, Lcom/android/internal/telephony/msim/SubscriptionManager$PhoneSubscriptionInfo;->subReady:Z

    return v0
.end method

.method private getCurrentSubscriptionStatus(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;
    .locals 1
    .parameter "subId"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentSubscriptions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/msim/SubscriptionManager$PhoneSubscriptionInfo;

    iget-object v0, v0, Lcom/android/internal/telephony/msim/SubscriptionManager$PhoneSubscriptionInfo;->sub:Lcom/android/internal/telephony/msim/Subscription;

    iget-object v0, v0, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    return-object v0
.end method

.method public static getInstance()Lcom/android/internal/telephony/msim/SubscriptionManager;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/telephony/msim/SubscriptionManager;->sSubscriptionManager:Lcom/android/internal/telephony/msim/SubscriptionManager;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccController;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/msim/SubscriptionManager;
    .locals 2
    .parameter "context"
    .parameter "uiccController"
    .parameter "ci"

    .prologue
    const-string v0, "SubscriptionManager"

    const-string v1, "getInstance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/internal/telephony/msim/SubscriptionManager;->sSubscriptionManager:Lcom/android/internal/telephony/msim/SubscriptionManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/telephony/msim/SubscriptionManager;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/telephony/msim/SubscriptionManager;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccController;[Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v0, Lcom/android/internal/telephony/msim/SubscriptionManager;->sSubscriptionManager:Lcom/android/internal/telephony/msim/SubscriptionManager;

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/msim/SubscriptionManager;->sSubscriptionManager:Lcom/android/internal/telephony/msim/SubscriptionManager;

    return-object v0
.end method

.method private getSetSubscriptionResults()[Ljava/lang/String;
    .locals 4

    .prologue
    sget v2, Lcom/android/internal/telephony/msim/SubscriptionManager;->NUM_SUBSCRIPTIONS:I

    new-array v1, v2, [Ljava/lang/String;

    .local v1, result:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget v2, Lcom/android/internal/telephony/msim/SubscriptionManager;->NUM_SUBSCRIPTIONS:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentSubscriptions:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/msim/SubscriptionManager$PhoneSubscriptionInfo;

    iget-object v2, v2, Lcom/android/internal/telephony/msim/SubscriptionManager$PhoneSubscriptionInfo;->cause:Ljava/lang/String;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private getStringFrom(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "str"

    .prologue
    if-eqz p1, :cond_0

    if-eqz p1, :cond_1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 p1, 0x0

    .end local p1
    :cond_1
    return-object p1
.end method

.method private getUserPreferredSubs()V
    .locals 13

    .prologue
    const/4 v10, 0x2

    const/4 v12, 0x0

    const/4 v11, -0x1

    const/4 v1, 0x0

    .local v1, errorOnParsing:Z
    new-instance v8, Lcom/android/internal/telephony/msim/SubscriptionData;

    sget v9, Lcom/android/internal/telephony/msim/SubscriptionManager;->NUM_SUBSCRIPTIONS:I

    invoke-direct {v8, v9}, Lcom/android/internal/telephony/msim/SubscriptionData;-><init>(I)V

    iput-object v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    new-array v8, v10, [Ljava/lang/String;

    iput-object v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mlastIccIds:[Ljava/lang/String;

    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    sget v8, Lcom/android/internal/telephony/msim/SubscriptionManager;->NUM_SUBSCRIPTIONS:I

    if-ge v3, v8, :cond_7

    iget-object v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Landroid/provider/Settings$System;->USER_PREFERRED_SUBS:[Ljava/lang/String;

    aget-object v9, v9, v3

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, strUserSub:Ljava/lang/String;
    if-eqz v6, :cond_3

    const-string v8, "SubscriptionManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getUserPreferredSubs: strUserSub = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .local v5, splitUserSub:[Ljava/lang/String;
    array-length v8, v5

    sget v9, Lcom/android/internal/telephony/msim/SubscriptionManager;->USER_PREF_SUB_FIELDS:I

    if-ne v8, v9, :cond_6

    const/4 v8, 0x0

    aget-object v8, v5, v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v8, v8, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v8, v8, v3

    const/4 v9, 0x0

    aget-object v9, v5, v9

    iput-object v9, v8, Lcom/android/internal/telephony/msim/Subscription;->iccId:Ljava/lang/String;

    :cond_0
    const/4 v8, 0x1

    aget-object v8, v5, v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v8, v8, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v8, v8, v3

    const/4 v9, 0x1

    aget-object v9, v5, v9

    iput-object v9, v8, Lcom/android/internal/telephony/msim/Subscription;->appType:Ljava/lang/String;

    :cond_1
    const/4 v8, 0x2

    aget-object v8, v5, v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v8, v8, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v8, v8, v3

    const/4 v9, 0x2

    aget-object v9, v5, v9

    iput-object v9, v8, Lcom/android/internal/telephony/msim/Subscription;->appId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_2
    const/4 v8, 0x3

    :try_start_1
    aget-object v8, v5, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .local v7, subStatus:I
    iget-object v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v8, v8, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v8, v8, v3

    invoke-static {}, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->values()[Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    move-result-object v9

    aget-object v9, v9, v7

    iput-object v9, v8, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v7           #subStatus:I
    :goto_1
    :try_start_2
    iget-object v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v8, v8, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v8, v8, v3

    const/4 v9, 0x4

    aget-object v9, v5, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v8, Lcom/android/internal/telephony/msim/Subscription;->m3gppIndex:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    iget-object v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v8, v8, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v8, v8, v3

    const/4 v9, 0x5

    aget-object v9, v5, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v8, Lcom/android/internal/telephony/msim/Subscription;->m3gpp2Index:I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    iget-object v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v8, v8, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v8, v8, v3

    const/4 v9, 0x6

    aget-object v9, v5, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v8, Lcom/android/internal/telephony/msim/Subscription;->slotId:I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    iget-object v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mlastIccIds:[Ljava/lang/String;

    const/4 v9, 0x7

    aget-object v9, v5, v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getStringFrom(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_5 .. :try_end_5} :catch_1

    .end local v5           #splitUserSub:[Ljava/lang/String;
    :cond_3
    :goto_5
    if-eqz v6, :cond_4

    if-eqz v1, :cond_5

    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ",,,"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_INVALID:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    invoke-virtual {v9}, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->ordinal()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, defaultUserSub:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Landroid/provider/Settings$System;->USER_PREFERRED_SUBS:[Ljava/lang/String;

    aget-object v9, v9, v3

    invoke-static {v8, v9, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v8, v8, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v8, v8, v3

    iput-object v12, v8, Lcom/android/internal/telephony/msim/Subscription;->iccId:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v8, v8, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v8, v8, v3

    iput-object v12, v8, Lcom/android/internal/telephony/msim/Subscription;->appType:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v8, v8, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v8, v8, v3

    iput-object v12, v8, Lcom/android/internal/telephony/msim/Subscription;->appId:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v8, v8, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v8, v8, v3

    sget-object v9, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_INVALID:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    iput-object v9, v8, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    iget-object v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v8, v8, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v8, v8, v3

    iput v11, v8, Lcom/android/internal/telephony/msim/Subscription;->m3gppIndex:I

    iget-object v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v8, v8, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v8, v8, v3

    iput v11, v8, Lcom/android/internal/telephony/msim/Subscription;->m3gpp2Index:I

    .end local v0           #defaultUserSub:Ljava/lang/String;
    :cond_5
    iget-object v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v8, v8, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v8, v8, v3

    iput v3, v8, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getUserPreferredSubs: mUserPrefSubs.subscription["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v9, v9, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v9, v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .restart local v5       #splitUserSub:[Ljava/lang/String;
    :catch_0
    move-exception v2

    .local v2, ex:Ljava/lang/NumberFormatException;
    :try_start_6
    const-string v8, "SubscriptionManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getUserPreferredSubs: NumberFormatException: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v8, v8, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v8, v8, v3

    sget-object v9, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_INVALID:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    iput-object v9, v8, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;
    :try_end_6
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_1

    .end local v2           #ex:Ljava/lang/NumberFormatException;
    .end local v5           #splitUserSub:[Ljava/lang/String;
    :catch_1
    move-exception v4

    .local v4, pe:Ljava/util/regex/PatternSyntaxException;
    const-string v8, "SubscriptionManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getUserPreferredSubs: PatternSyntaxException while split : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    goto/16 :goto_5

    .end local v4           #pe:Ljava/util/regex/PatternSyntaxException;
    .restart local v5       #splitUserSub:[Ljava/lang/String;
    :catch_2
    move-exception v2

    .restart local v2       #ex:Ljava/lang/NumberFormatException;
    :try_start_7
    const-string v8, "SubscriptionManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getUserPreferredSubs:m3gppIndex: NumberFormatException: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v8, v8, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v8, v8, v3

    const/4 v9, -0x1

    iput v9, v8, Lcom/android/internal/telephony/msim/Subscription;->m3gppIndex:I

    goto/16 :goto_2

    .end local v2           #ex:Ljava/lang/NumberFormatException;
    :catch_3
    move-exception v2

    .restart local v2       #ex:Ljava/lang/NumberFormatException;
    const-string v8, "SubscriptionManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getUserPreferredSubs:m3gpp2Index: NumberFormatException: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v8, v8, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v8, v8, v3

    const/4 v9, -0x1

    iput v9, v8, Lcom/android/internal/telephony/msim/Subscription;->m3gpp2Index:I

    goto/16 :goto_3

    .end local v2           #ex:Ljava/lang/NumberFormatException;
    :catch_4
    move-exception v2

    .restart local v2       #ex:Ljava/lang/NumberFormatException;
    const-string v8, "SubscriptionManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getUserPreferredSubs:slotId: NumberFormatException: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v8, v8, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v8, v8, v3

    const/4 v9, -0x1

    iput v9, v8, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    goto/16 :goto_4

    .end local v2           #ex:Ljava/lang/NumberFormatException;
    :catch_5
    move-exception v2

    .restart local v2       #ex:Ljava/lang/NumberFormatException;
    const-string v8, "SubscriptionManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getmlastIccIds: NumberFormatException: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mlastIccIds:[Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v9, v8, v3

    goto/16 :goto_5

    .end local v2           #ex:Ljava/lang/NumberFormatException;
    :cond_6
    const-string v8, "SubscriptionManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getUserPreferredSubs: splitUserSub.length != "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/android/internal/telephony/msim/SubscriptionManager;->USER_PREF_SUB_FIELDS:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_7 .. :try_end_7} :catch_1

    const/4 v1, 0x1

    goto/16 :goto_5

    .end local v5           #splitUserSub:[Ljava/lang/String;
    .end local v6           #strUserSub:Ljava/lang/String;
    :cond_7
    return-void
.end method

.method private isAllCardsInfoAvailable()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x1

    .local v4, result:Z
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCardInfoAvailable:[Z

    .local v0, arr$:[Z
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-boolean v1, v0, v2

    .local v1, available:Z
    if-eqz v4, :cond_0

    if-eqz v1, :cond_0

    move v4, v5

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v4, v6

    goto :goto_1

    .end local v1           #available:Z
    :cond_1
    if-nez v4, :cond_2

    iget-boolean v7, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mAllCardsStatusAvailable:Z

    if-eqz v7, :cond_3

    :cond_2
    move v6, v5

    :cond_3
    return v6
.end method

.method private isAllRadioOn()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .local v4, result:Z
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mRadioOn:[Z

    .local v0, arr$:[Z
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-boolean v3, v0, v1

    .local v3, radioOn:Z
    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    const/4 v4, 0x1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .end local v3           #radioOn:Z
    :cond_1
    return v4
.end method

.method private isAnyPendingActivateRequest(I)Z
    .locals 3
    .parameter "subId"

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mActivatePending:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/msim/Subscription;

    .local v0, newSub:Lcom/android/internal/telephony/msim/Subscription;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    sget-object v2, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isNewCardAvailable()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .local v4, result:Z
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mIsNewCard:[Z

    .local v0, arr$:[Z
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_2

    aget-boolean v2, v0, v1

    .local v2, isNew:Z
    if-nez v4, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .end local v2           #isNew:Z
    :cond_2
    return v4
.end method

.method private isPresentInActivatePendingList(Lcom/android/internal/telephony/msim/Subscription;)Z
    .locals 7
    .parameter "userSub"

    .prologue
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v1

    .local v1, arr$:[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v1, v2

    .local v4, sub:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mActivatePending:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/msim/Subscription;

    .local v0, actPendingSub:Lcom/android/internal/telephony/msim/Subscription;
    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/msim/Subscription;->isSame(Lcom/android/internal/telephony/msim/Subscription;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, p1, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    iget v6, v0, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    if-ne v5, v6, :cond_0

    const/4 v5, 0x1

    .end local v0           #actPendingSub:Lcom/android/internal/telephony/msim/Subscription;
    .end local v4           #sub:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    :goto_1
    return v5

    .restart local v0       #actPendingSub:Lcom/android/internal/telephony/msim/Subscription;
    .restart local v4       #sub:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0           #actPendingSub:Lcom/android/internal/telephony/msim/Subscription;
    .end local v4           #sub:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .parameter "string"

    .prologue
    const-string v0, "SubscriptionManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .parameter "string"

    .prologue
    const-string v0, "SubscriptionManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private notifyIfAnyNewCardsAvailable()V
    .locals 3

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->isNewCardAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->notifyNewCardsAvailable()V

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mIsNewCard:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mIsNewCard:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0           #i:I
    :cond_0
    return-void
.end method

.method private notifySlotSubscriptionActivated(I)V
    .locals 3
    .parameter "subId"

    .prologue
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscription(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/msim/Subscription;

    move-result-object v0

    .local v0, changedSub:Lcom/android/internal/telephony/msim/Subscription;
    if-eqz v0, :cond_0

    const/4 v1, -0x1

    iget v2, v0, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifySlotSubscriptionActivated:subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",slotId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSubActivatedRegistrantsOnSlot:[Landroid/os/RegistrantList;

    iget v2, v0, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    :cond_0
    return-void
.end method

.method private notifySlotSubscriptionDeactivated(I)V
    .locals 3
    .parameter "subId"

    .prologue
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscription(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/msim/Subscription;

    move-result-object v0

    .local v0, changedSub:Lcom/android/internal/telephony/msim/Subscription;
    if-eqz v0, :cond_0

    const/4 v1, -0x1

    iget v2, v0, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifySlotSubscriptionDeactivated:subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",slotId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSubDeactivatedRegistrantsOnSlot:[Landroid/os/RegistrantList;

    iget v2, v0, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    :cond_0
    return-void
.end method

.method private notifySubscriptionActivated(I)V
    .locals 1
    .parameter "subId"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSubActivatedRegistrants:[Landroid/os/RegistrantList;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->notifySlotSubscriptionActivated(I)V

    return-void
.end method

.method private notifySubscriptionDeactivated(I)V
    .locals 1
    .parameter "subId"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSubDeactivatedRegistrants:[Landroid/os/RegistrantList;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->notifySlotSubscriptionDeactivated(I)V

    return-void
.end method

.method private printPendingActivateRequests()V
    .locals 7

    .prologue
    const-string v5, "ActivatePending Queue : "

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v0

    .local v0, arr$:[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .local v4, sub:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mActivatePending:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/msim/Subscription;

    .local v3, newSub:Lcom/android/internal/telephony/msim/Subscription;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v3           #newSub:Lcom/android/internal/telephony/msim/Subscription;
    .end local v4           #sub:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    :cond_0
    return-void
.end method

.method private printPendingDeactivateRequests()V
    .locals 7

    .prologue
    const-string v5, "DeactivatePending Queue : "

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v0

    .local v0, arr$:[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .local v4, sub:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDeactivatePending:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/msim/Subscription;

    .local v3, newSub:Lcom/android/internal/telephony/msim/Subscription;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v3           #newSub:Lcom/android/internal/telephony/msim/Subscription;
    .end local v4           #sub:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    :cond_0
    return-void
.end method

.method private processActivateRequests()V
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processActivateRequests: mSetSubscriptionInProgress = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetSubscriptionInProgress:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSetSubsModeRequired = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetSubsModeRequired:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetSubscriptionInProgress:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetSubsModeRequired:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->setSubscriptionMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetSubscriptionInProgress:Z

    iget-boolean v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetSubscriptionInProgress:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetSubsModeRequired:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->startNextPendingActivateRequests()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetSubscriptionInProgress:Z

    goto :goto_0
.end method

.method private processAllCardsInfoAvailable()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    invoke-direct {p0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->isAllRadioOn()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "processAllCardsInfoAvailable: Radio Not Available "

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v2, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mHuaweiDSDA:Z

    if-eqz v2, :cond_1

    const-string v2, "SubscriptionManager"

    const-string v3, "processAllCardsInfoAvailable, DSDA do nothing!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .local v0, availableCards:I
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mAllCardsStatusAvailable:Z

    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_4

    iget-object v2, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCardInfoAvailable:[Z

    aget-boolean v2, v2, v1

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCardSubMgr:Lcom/android/internal/telephony/msim/CardSubscriptionManager;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->isCardAbsentOrError(I)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    if-ne v0, v3, :cond_5

    iget-boolean v2, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetSubscriptionInProgress:Z

    if-nez v2, :cond_5

    invoke-direct {p0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->processActivateRequests()V

    :cond_5
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->notifyIfAnyNewCardsAvailable()V

    goto :goto_0
.end method

.method private processAllDataDisconnected(Landroid/os/AsyncResult;)V
    .locals 4
    .parameter "ar"

    .prologue
    if-nez p1, :cond_1

    const-string v2, "processAllDataDisconnected: ar is null!! return!!"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .local v0, sub:Ljava/lang/Integer;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processAllDataDisconnected: sub = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/telephony/msim/MSimProxyManager;->getInstance()Lcom/android/internal/telephony/msim/MSimProxyManager;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3, p0}, Lcom/android/internal/telephony/msim/MSimProxyManager;->unregisterForAllDataDisconnected(ILandroid/os/Handler;)V

    iget-boolean v2, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDisableDdsInProgress:Z

    if-eqz v2, :cond_2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->processDisableDataConnectionDone(Landroid/os/AsyncResult;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v1, v2, v3

    .local v1, subId:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processAllDataDisconnected: sub = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - subscriptionReadiness["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscriptionReadiness(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isSubActive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/msim/SubscriptionManager;->isSubActive(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscriptionReadiness(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/msim/SubscriptionManager;->isSubActive(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->resetCurrentSubscription(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)V

    invoke-direct {p0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->updateSubPreferences()V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/msim/SubscriptionManager;->notifySubscriptionDeactivated(I)V

    invoke-direct {p0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->triggerUpdateFromAvaialbleCards()V

    goto/16 :goto_0
.end method

.method private processAvailableCards()V
    .locals 2

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->isAllRadioOn()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "processAvailableCards: Radio Not Available "

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetSubscriptionInProgress:Z

    if-eqz v1, :cond_1

    const-string v1, "processAvailableCards: set subscription in progress!!"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .local v0, cardIndex:I
    :goto_1
    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->updateActivatePendingList(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->processActivateRequests()V

    invoke-direct {p0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->notifyIfAnyNewCardsAvailable()V

    goto :goto_0
.end method

.method private processCardInfoAvailable(Landroid/os/AsyncResult;)V
    .locals 12
    .parameter "ar"

    .prologue
    const/4 v11, 0x1

    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .local v1, cardIndex:Ljava/lang/Integer;
    iget-boolean v9, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mHuaweiDSDA:Z

    if-eqz v9, :cond_0

    const-string v9, "SubscriptionManager"

    const-string v10, "processCardInfoAvailable, DSDA do nothing!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/msim/SubscriptionManager;->processCardInfoAvailableDSDA(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v9, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mRadioOn:[Z

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aget-boolean v9, v9, v10

    if-nez v9, :cond_1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "processCardInfoAvailable: Radio Not Available on cardIndex = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v9, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCardInfoAvailable:[Z

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aput-boolean v11, v9, v10

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "processCardInfoAvailable: CARD:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is available"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCardSubMgr:Lcom/android/internal/telephony/msim/CardSubscriptionManager;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->getCardSubscriptions(I)Lcom/android/internal/telephony/msim/SubscriptionData;

    move-result-object v2

    .local v2, cardSubInfo:Lcom/android/internal/telephony/msim/SubscriptionData;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "processCardInfoAvailable: cardIndex = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n Card Sub Info = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v0, v9, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    .local v0, arr$:[Lcom/android/internal/telephony/msim/Subscription;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_3

    aget-object v8, v0, v4

    .local v8, userSub:Lcom/android/internal/telephony/msim/Subscription;
    iget v7, v8, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    .local v7, subId:I
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v9

    aget-object v9, v9, v7

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscription(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/msim/Subscription;

    move-result-object v3

    .local v3, currentSub:Lcom/android/internal/telephony/msim/Subscription;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "processCardInfoAvailable: subId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n user pref sub = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n current sub   = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    iget-object v9, v8, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    sget-object v10, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v9, v10, :cond_2

    iget-object v9, v3, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    sget-object v10, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-eq v9, v10, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget v10, v8, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    if-ne v9, v10, :cond_2

    invoke-virtual {v2, v8}, Lcom/android/internal/telephony/msim/SubscriptionData;->hasSubscription(Lcom/android/internal/telephony/msim/Subscription;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/msim/SubscriptionManager;->isPresentInActivatePendingList(Lcom/android/internal/telephony/msim/Subscription;)Z

    move-result v9

    if-nez v9, :cond_2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "processCardInfoAvailable: subId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " need to activate!!!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mActivatePending:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v10

    aget-object v10, v10, v7

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_2

    new-instance v6, Lcom/android/internal/telephony/msim/Subscription;

    invoke-direct {v6}, Lcom/android/internal/telephony/msim/Subscription;-><init>()V

    .local v6, sub:Lcom/android/internal/telephony/msim/Subscription;
    invoke-virtual {v2, v8}, Lcom/android/internal/telephony/msim/SubscriptionData;->getSubscription(Lcom/android/internal/telephony/msim/Subscription;)Lcom/android/internal/telephony/msim/Subscription;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/android/internal/telephony/msim/Subscription;->copyFrom(Lcom/android/internal/telephony/msim/Subscription;)Lcom/android/internal/telephony/msim/Subscription;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, v6, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    iput v7, v6, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    sget-object v9, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    iput-object v9, v6, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    iget-object v9, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mActivatePending:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v10

    aget-object v10, v10, v7

    invoke-virtual {v9, v10, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v6           #sub:Lcom/android/internal/telephony/msim/Subscription;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .end local v3           #currentSub:Lcom/android/internal/telephony/msim/Subscription;
    .end local v7           #subId:I
    .end local v8           #userSub:Lcom/android/internal/telephony/msim/Subscription;
    :cond_3
    iget-object v9, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mIsNewCard:[Z

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aput-boolean v11, v9, v10

    iget-object v9, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v0, v9, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    array-length v5, v0

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v5, :cond_5

    aget-object v8, v0, v4

    .restart local v8       #userSub:Lcom/android/internal/telephony/msim/Subscription;
    invoke-virtual {v2, v8}, Lcom/android/internal/telephony/msim/SubscriptionData;->hasSubscription(Lcom/android/internal/telephony/msim/Subscription;)Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mIsNewCard:[Z

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/4 v11, 0x0

    aput-boolean v11, v9, v10

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v8           #userSub:Lcom/android/internal/telephony/msim/Subscription;
    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "processCardInfoAvailable: mIsNewCard ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mIsNewCard:[Z

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aget-boolean v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/msim/SubscriptionManager;->updateActivatePendingList(I)V

    invoke-direct {p0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->isAllCardsInfoAvailable()Z

    move-result v9

    if-nez v9, :cond_6

    const-string v9, "All cards info not available!! Waiting for all info before processing"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    iget-boolean v9, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->bSupportGlobalMode:Z

    if-eqz v9, :cond_7

    iget-boolean v9, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mAllCardsStatusAvailable:Z

    if-nez v9, :cond_7

    const-string v9, "Global Mode, wait until allCardInfo Avaailable events received!"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "processCardInfoAvailable: mSetSubscriptionInProgress = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetSubscriptionInProgress:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    iget-boolean v9, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetSubscriptionInProgress:Z

    if-nez v9, :cond_8

    invoke-direct {p0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->processActivateRequests()V

    :cond_8
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->notifyIfAnyNewCardsAvailable()V

    goto/16 :goto_0
.end method

.method private processCardInfoAvailableDSDA(I)V
    .locals 8
    .parameter "cardIndex"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    move v2, p1

    .local v2, subId:I
    iget-object v4, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v4, v4, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v3, v4, v2

    .local v3, userSub:Lcom/android/internal/telephony/msim/Subscription;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscription(I)Lcom/android/internal/telephony/msim/Subscription;

    move-result-object v0

    .local v0, currentSub:Lcom/android/internal/telephony/msim/Subscription;
    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .local v1, radiostate:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    iget-object v4, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCardInfoAvailable:[Z

    aput-boolean v7, v4, p1

    iget-object v4, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "processCardInfoAvailableDSDA, airPlaneModeOn = true! do nothing!"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v4, "Enter here, I assumed that this card not changed! so I can use the userPref info"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v4, v4, v2

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processCardInfoAvailableDSDA: subId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n user pref sub = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n current sub   = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    iget-object v4, v3, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    sget-object v5, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDesiredRadioStates:[Lcom/android/internal/telephony/CommandsInterface$RadioState;

    sget-object v5, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    aput-object v5, v4, v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscription(I)Lcom/android/internal/telephony/msim/Subscription;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/msim/Subscription;->copyFrom(Lcom/android/internal/telephony/msim/Subscription;)Lcom/android/internal/telephony/msim/Subscription;

    sget-object v4, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq v1, v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processCardInfoAvailable: subId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " need to activate!!!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mOperationDones:[Z

    aput-boolean v6, v4, v2

    invoke-static {v2}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4, v7}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    goto :goto_0

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processCardInfoAvailable: radio already ON, subId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/msim/SubscriptionManager;->processRadioStateChanged(I)V

    goto/16 :goto_0

    :cond_3
    iget-object v4, v3, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    sget-object v5, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_DEACTIVATED:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v4, v5, :cond_0

    iget-object v4, v0, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    sget-object v5, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_DEACTIVATED:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-eq v4, v5, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processCardInfoAvailable: subId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " need to deactivate!!!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDesiredRadioStates:[Lcom/android/internal/telephony/CommandsInterface$RadioState;

    sget-object v5, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    aput-object v5, v4, v2

    iget-object v4, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mOperationDones:[Z

    aput-boolean v6, v4, v2

    invoke-static {v2}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4, v6}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscription(I)Lcom/android/internal/telephony/msim/Subscription;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/msim/Subscription;->copyFrom(Lcom/android/internal/telephony/msim/Subscription;)Lcom/android/internal/telephony/msim/Subscription;

    goto/16 :goto_0
.end method

.method private processCardInfoNotAvailable(Landroid/os/AsyncResult;)V
    .locals 10
    .parameter "ar"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v8, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_0

    iget-object v8, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v8, :cond_2

    :cond_0
    const-string v6, "processCardInfoNotAvailable - Exception"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .local v1, cardIndex:Ljava/lang/Integer;
    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/MSimConstants$CardUnavailableReason;

    .local v4, reason:Lcom/android/internal/telephony/MSimConstants$CardUnavailableReason;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "processCardInfoNotAvailable on cardIndex = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " reason = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCardInfoAvailable:[Z

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aput-boolean v7, v8, v9

    iget-boolean v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mHuaweiDSDA:Z

    if-eqz v8, :cond_3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/SubscriptionManager;->processCardInfoNotAvailableDSDA(I)V

    goto :goto_0

    :cond_3
    iget-object v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCardInfoAvailable:[Z

    aget-boolean v8, v8, v7

    if-nez v8, :cond_6

    iget-object v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCardInfoAvailable:[Z

    aget-boolean v8, v8, v6

    if-nez v8, :cond_6

    :goto_1
    iput-boolean v6, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetSubsModeRequired:Z

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "processCardInfoNotAvailable mSetSubsModeRequired = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetSubsModeRequired:Z

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    sget-object v6, Lcom/android/internal/telephony/MSimConstants$CardUnavailableReason;->REASON_RADIO_UNAVAILABLE:Lcom/android/internal/telephony/MSimConstants$CardUnavailableReason;

    if-eq v4, v6, :cond_4

    sget-object v6, Lcom/android/internal/telephony/MSimConstants$CardUnavailableReason;->REASON_SIM_REFRESH_RESET:Lcom/android/internal/telephony/MSimConstants$CardUnavailableReason;

    if-ne v4, v6, :cond_7

    :cond_4
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v0

    .local v0, arr$:[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_2
    if-ge v2, v3, :cond_7

    aget-object v5, v0, v2

    .local v5, sub:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscription(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/msim/Subscription;

    move-result-object v6

    iget v6, v6, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v6, v8, :cond_5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/SubscriptionManager;->resetCurrentSubscription(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)V

    invoke-virtual {v5}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->ordinal()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/SubscriptionManager;->notifySubscriptionDeactivated(I)V

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v0           #arr$:[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v5           #sub:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    :cond_6
    move v6, v7

    goto :goto_1

    :cond_7
    sget-object v6, Lcom/android/internal/telephony/MSimConstants$CardUnavailableReason;->REASON_RADIO_UNAVAILABLE:Lcom/android/internal/telephony/MSimConstants$CardUnavailableReason;

    if-ne v4, v6, :cond_1

    iput-boolean v7, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mAllCardsStatusAvailable:Z

    goto/16 :goto_0
.end method

.method private processCardInfoNotAvailableDSDA(I)V
    .locals 5
    .parameter "cardIndex"

    .prologue
    move v1, p1

    .local v1, subId:I
    new-instance v0, Lcom/android/internal/telephony/msim/Subscription;

    invoke-direct {v0}, Lcom/android/internal/telephony/msim/Subscription;-><init>()V

    .local v0, currentSub:Lcom/android/internal/telephony/msim/Subscription;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processCardInfoNotAvailableDSDA cardIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "processCardInfoNotAvailableDSDA, airPlaneModeOn = true! do nothing!"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDesiredRadioStates:[Lcom/android/internal/telephony/CommandsInterface$RadioState;

    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    aput-object v3, v2, v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/msim/Subscription;->clear()V

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscription(I)Lcom/android/internal/telephony/msim/Subscription;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/msim/Subscription;->copyFrom(Lcom/android/internal/telephony/msim/Subscription;)Lcom/android/internal/telephony/msim/Subscription;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->processRadioStateChanged(I)V

    goto :goto_0
.end method

.method private processCleanupDataConnectionDone(Ljava/lang/Integer;)V
    .locals 2
    .parameter "subId"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mRadioOn:[Z

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-boolean v0, v0, v1

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processCleanupDataConnectionDone: Radio Not Available on subId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDataActive:Z

    invoke-direct {p0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->startNextPendingDeactivateRequests()Z

    goto :goto_0
.end method

.method private processDisableDataConnectionDone(Landroid/os/AsyncResult;)V
    .locals 4
    .parameter "ar"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    iget v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mQueuedDds:I

    invoke-static {v0}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->setDataSubscription(I)V

    iget v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    iget v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mQueuedDds:I

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/msim/MSimProxyManager;->getInstance()Lcom/android/internal/telephony/msim/MSimProxyManager;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/msim/MSimProxyManager;->updateDataConnectionTracker(I)V

    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mQueuedDds:I

    iput v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    invoke-static {}, Lcom/android/internal/telephony/msim/MSimProxyManager;->getInstance()Lcom/android/internal/telephony/msim/MSimProxyManager;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/msim/MSimProxyManager;->updateDataConnectionTracker(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDataSubscriptionSource is Successful  Enable Data Connectivity on Subscription "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/telephony/msim/MSimProxyManager;->getInstance()Lcom/android/internal/telephony/msim/MSimProxyManager;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/msim/MSimProxyManager;->enableDataConnectivity(I)V

    iput-boolean v2, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDataActive:Z

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDisableDdsInProgress:Z

    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetDdsCompleteMsg:Landroid/os/Message;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetDdsCompleteMsg:Landroid/os/Message;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    const-string v0, "Enable Data Connectivity Done!! Sending the cnf back!"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetDdsCompleteMsg:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iput-object v3, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetDdsCompleteMsg:Landroid/os/Message;

    :cond_1
    return-void

    :cond_2
    const-string v0, "SubscriptionManager"

    const-string v1, "Disabling Data Subscription Failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private processDisableDataConnectionDoneDSDA(Landroid/os/AsyncResult;)V
    .locals 3
    .parameter "ar"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDisableDdsInProgress:Z

    iget v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mQueuedDds:I

    invoke-static {v0}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->setDataSubscription(I)V

    iget v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    iget v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mQueuedDds:I

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/msim/MSimProxyManager;->getInstance()Lcom/android/internal/telephony/msim/MSimProxyManager;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/msim/MSimProxyManager;->updateDataConnectionTracker(I)V

    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mQueuedDds:I

    iput v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    invoke-static {}, Lcom/android/internal/telephony/msim/MSimProxyManager;->getInstance()Lcom/android/internal/telephony/msim/MSimProxyManager;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/msim/MSimProxyManager;->updateDataConnectionTracker(I)V

    invoke-static {}, Lcom/android/internal/telephony/msim/MSimProxyManager;->getInstance()Lcom/android/internal/telephony/msim/MSimProxyManager;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mQueuedDds:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/msim/MSimProxyManager;->enableDataConnectivity(I)V

    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetDdsCompleteMsg:Landroid/os/Message;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetDdsCompleteMsg:Landroid/os/Message;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    const-string v0, "Enable Data Connectivity Done!! Sending the cnf back!"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetDdsCompleteMsg:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iput-object v2, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetDdsCompleteMsg:Landroid/os/Message;

    :cond_1
    return-void
.end method

.method private processRadioStateChanged(I)V
    .locals 12
    .parameter "subId"

    .prologue
    const/4 v7, 0x1

    .local v7, bOperationDone:Z
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscription(I)Lcom/android/internal/telephony/msim/Subscription;

    move-result-object v8

    .local v8, currSub:Lcom/android/internal/telephony/msim/Subscription;
    const-string v0, "SubscriptionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processRadioStateChanged, subID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDesiredRadioStates:[Lcom/android/internal/telephony/CommandsInterface$RadioState;

    aget-object v0, v0, p1

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDesiredRadioStates:[Lcom/android/internal/telephony/CommandsInterface$RadioState;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, p1

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDesiredRadioStates:[Lcom/android/internal/telephony/CommandsInterface$RadioState;

    aget-object v0, v0, p1

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    iput-object v0, v8, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mOperationDones:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    invoke-virtual {p0, p1, v8}, Lcom/android/internal/telephony/msim/SubscriptionManager;->saveUserPreferredSubscription(ILcom/android/internal/telephony/msim/Subscription;)V

    iget-object v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSubResult:[Ljava/lang/String;

    iget-object v0, v8, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    sget-object v2, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v0, v2, :cond_4

    const-string v0, "ACTIVATE SUCCESS"

    :goto_1
    aput-object v0, v1, p1

    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mOperationDones:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mOperationDones:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDesiredRadioStates:[Lcom/android/internal/telephony/CommandsInterface$RadioState;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDesiredRadioStates:[Lcom/android/internal/telephony/CommandsInterface$RadioState;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq v0, v1, :cond_6

    const/4 v11, 0x0

    .local v11, nCount:I
    const/4 v6, 0x0

    .local v6, activeSubId:I
    const-string v0, "SubscriptionManager"

    const-string v1, "processRadioStateChanged finished!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    .local v9, i:I
    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDesiredRadioStates:[Lcom/android/internal/telephony/CommandsInterface$RadioState;

    array-length v0, v0

    if-ge v9, v0, :cond_5

    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    iget-object v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDesiredRadioStates:[Lcom/android/internal/telephony/CommandsInterface$RadioState;

    aget-object v1, v1, v9

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCardInfoAvailable:[Z

    aget-boolean v0, v0, v9

    if-eqz v0, :cond_1

    move v6, v9

    add-int/lit8 v11, v11, 0x1

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .end local v6           #activeSubId:I
    .end local v9           #i:I
    .end local v11           #nCount:I
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDesiredRadioStates:[Lcom/android/internal/telephony/CommandsInterface$RadioState;

    aget-object v0, v0, p1

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_DEACTIVATED:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    iput-object v0, v8, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    goto :goto_0

    :cond_3
    const-string v0, "SubscriptionManager"

    const-string v1, "processRadioStateChanged!  Don\'t care this state!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void

    :cond_4
    const-string v0, "DEACTIVATE SUCCESS"

    goto :goto_1

    .restart local v6       #activeSubId:I
    .restart local v9       #i:I
    .restart local v11       #nCount:I
    :cond_5
    const-string v0, "SubscriptionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processRadioStateChanged activated count ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne v0, v11, :cond_6

    const-string v0, "SubscriptionManager"

    const-string v1, "processRadioStateChanged only one activated!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v6}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->setDataSubscription(I)V

    invoke-static {v6}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->setDefaultSubscription(I)V

    invoke-static {v6}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->setSMSSubscription(I)V

    invoke-static {v6}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->setVoiceSubscription(I)V

    .end local v6           #activeSubId:I
    .end local v9           #i:I
    .end local v11           #nCount:I
    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetSubscriptionRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_7

    const-string v0, "send setSubscription completed event 0!"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetSubscriptionRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSubResult:[Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    :cond_7
    new-instance v10, Landroid/content/Intent;

    const-string v0, "android.intent.action.ACTION_SET_SUBSCRIPTION_DONE"

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v10, intent:Landroid/content/Intent;
    sget-object v1, Lcom/android/internal/telephony/msim/SubscriptionManager;->SUB_STATE:Ljava/lang/String;

    iget-object v0, v8, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    sget-object v2, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v0, v2, :cond_8

    const/4 v0, 0x1

    :goto_4
    invoke-virtual {v10, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v0, Lcom/android/internal/telephony/msim/SubscriptionManager;->SUB_ID:Ljava/lang/String;

    iget v1, v8, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, p1

    iget v1, v8, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    invoke-virtual {v8}, Lcom/android/internal/telephony/msim/Subscription;->getAppIndex()I

    move-result v2

    iget v3, v8, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    iget-object v4, v8, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    sget-object v5, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v4, v5, :cond_9

    const/4 v4, 0x1

    :goto_5
    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->setUiccSubscription(IIIILandroid/os/Message;)V

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->notifySubscriptionActivated(I)V

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->notifySlotSubscriptionActivated(I)V

    goto/16 :goto_3

    :cond_8
    const/4 v0, 0x0

    goto :goto_4

    :cond_9
    const/4 v4, 0x0

    goto :goto_5
.end method

.method private processSetDataSubscriptionDone(Landroid/os/AsyncResult;)V
    .locals 5
    .parameter "ar"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    const-string v0, "Register for the all data disconnect"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->getDataSubscription()I

    move-result v0

    iget v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDataSubscription()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->getDataSubscription()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCurrentDds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    invoke-static {v0}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->setDataSubscription(I)V

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/msim/MSimProxyManager;->getInstance()Lcom/android/internal/telephony/msim/MSimProxyManager;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    const/16 v2, 0x8

    new-instance v3, Ljava/lang/Integer;

    iget v4, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/android/internal/telephony/msim/MSimProxyManager;->registerForAllDataDisconnected(ILandroid/os/Handler;ILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "SubscriptionManager"

    const-string v1, "setDataSubscriptionSource Failed : "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDisableDdsInProgress:Z

    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetDdsCompleteMsg:Landroid/os/Message;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetDdsCompleteMsg:Landroid/os/Message;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    const-string v0, "posting failure message"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetDdsCompleteMsg:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iput-object v3, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetDdsCompleteMsg:Landroid/os/Message;

    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/msim/MSimProxyManager;->getInstance()Lcom/android/internal/telephony/msim/MSimProxyManager;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/msim/MSimProxyManager;->enableDataConnectivity(I)V

    goto :goto_0
.end method

.method private processSetSubscriptionModeDone()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->isAllRadioOn()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "processSetSubscriptionModeDone: Radio Not Available"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->startNextPendingActivateRequests()Z

    goto :goto_0
.end method

.method private processSetUiccSubscriptionDone(Landroid/os/AsyncResult;)V
    .locals 12
    .parameter "ar"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v11, 0x0

    iget-object v4, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;

    .local v4, setSubParam:Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;
    const/4 v0, 0x0

    .local v0, cause:Ljava/lang/String;
    sget-object v5, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_INVALID:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    .local v5, subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;
    const/4 v1, 0x0

    .local v1, currentSub:Lcom/android/internal/telephony/msim/Subscription;
    iget-object v6, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mRadioOn:[Z

    iget v9, v4, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subId:I

    aget-boolean v6, v6, v9

    if-nez v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "processSetUiccSubscriptionDone: Radio Not Available on subId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v6, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_b

    iget-object v6, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v6, v6, Lcom/android/internal/telephony/CommandException;

    if-eqz v6, :cond_2

    iget-object v6, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v6, Lcom/android/internal/telephony/CommandException;

    check-cast v6, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    .local v2, error:Lcom/android/internal/telephony/CommandException$Error;
    if-eqz v2, :cond_2

    sget-object v6, Lcom/android/internal/telephony/CommandException$Error;->SUBSCRIPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v2, v6, :cond_2

    iget-object v6, v4, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    sget-object v9, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v6, v9, :cond_6

    const-string v0, "ACTIVATE NOT SUPPORTED"

    .end local v2           #error:Lcom/android/internal/telephony/CommandException$Error;
    :cond_2
    :goto_1
    iget-object v6, v4, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    sget-object v9, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v6, v9, :cond_7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "subscription of SUB:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v9, v4, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subId:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " Activate Failed"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    if-nez v0, :cond_3

    const-string v0, "ACTIVATE FAILED"

    :cond_3
    sget-object v5, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_DEACTIVATED:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    iget-object v6, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mActivatePending:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v9

    iget v10, v4, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subId:I

    aget-object v9, v9, v10

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #currentSub:Lcom/android/internal/telephony/msim/Subscription;
    check-cast v1, Lcom/android/internal/telephony/msim/Subscription;

    .restart local v1       #currentSub:Lcom/android/internal/telephony/msim/Subscription;
    iget-object v6, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mActivatePending:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v9

    iget v10, v4, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subId:I

    aget-object v9, v9, v10

    invoke-virtual {v6, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_2
    const-string v6, "set uicc subscription done. update the current subscriptions"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    iget v6, v4, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subId:I

    invoke-direct {p0, v6, v1, v5, v0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->updateCurrentSubscription(ILcom/android/internal/telephony/msim/Subscription;Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;Ljava/lang/String;)V

    iget-object v6, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_5

    iget-boolean v6, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->bSupportGlobalMode:Z

    if-eqz v6, :cond_5

    sget-object v6, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    iget-object v9, v4, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v6, v9, :cond_5

    const-string v6, "notifySubscriptionActivated"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    iget v6, v4, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subId:I

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/SubscriptionManager;->notifySubscriptionActivated(I)V

    :cond_5
    iget-object v6, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_e

    iget v6, v4, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subId:I

    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v9

    iget v10, v4, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subId:I

    aget-object v9, v9, v10

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscription(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/msim/Subscription;

    move-result-object v9

    invoke-virtual {p0, v6, v9}, Lcom/android/internal/telephony/msim/SubscriptionManager;->saveUserPreferredSubscription(ILcom/android/internal/telephony/msim/Subscription;)V

    :goto_3
    iget-object v6, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSubResult:[Ljava/lang/String;

    iget v9, v4, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subId:I

    aput-object v0, v6, v9

    invoke-direct {p0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->startNextPendingDeactivateRequests()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->startNextPendingActivateRequests()Z

    move-result v6

    if-nez v6, :cond_0

    iput-boolean v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetSubscriptionInProgress:Z

    invoke-direct {p0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->updateSubPreferences()V

    iget-object v6, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetSubscriptionRegistrants:Landroid/os/RegistrantList;

    if-eqz v6, :cond_0

    const-string v6, "send setSubscription completed event 1!"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetSubscriptionRegistrants:Landroid/os/RegistrantList;

    new-instance v9, Landroid/os/AsyncResult;

    iget-object v10, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSubResult:[Ljava/lang/String;

    invoke-direct {v9, v11, v10, v11}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v6, v9}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.ACTION_SET_SUBSCRIPTION_DONE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v3, intent:Landroid/content/Intent;
    sget-object v6, Lcom/android/internal/telephony/msim/SubscriptionManager;->SUB_STATE:Ljava/lang/String;

    sget-object v9, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v5, v9, :cond_10

    :goto_4
    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v6, Lcom/android/internal/telephony/msim/SubscriptionManager;->SUB_ID:Ljava/lang/String;

    iget v7, v4, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subId:I

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .end local v3           #intent:Landroid/content/Intent;
    .restart local v2       #error:Lcom/android/internal/telephony/CommandException$Error;
    :cond_6
    iget-object v6, v4, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    sget-object v9, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_DEACTIVATE:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v6, v9, :cond_2

    const-string v0, "DEACTIVATE NOT SUPPORTED"

    goto/16 :goto_1

    .end local v2           #error:Lcom/android/internal/telephony/CommandException$Error;
    :cond_7
    iget-object v6, v4, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    sget-object v9, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_DEACTIVATE:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v6, v9, :cond_a

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "subscription of SUB:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v9, v4, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subId:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " Deactivate Failed"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    if-nez v0, :cond_8

    iget v6, v4, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subId:I

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/SubscriptionManager;->isAnyPendingActivateRequest(I)Z

    move-result v6

    if-eqz v6, :cond_9

    const-string v0, "ACTIVATE FAILED"

    iget-object v6, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mActivatePending:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v9

    iget v10, v4, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subId:I

    aget-object v9, v9, v10

    invoke-virtual {v6, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    :goto_5
    sget-object v5, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    iget-object v6, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDeactivatePending:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v9

    iget v10, v4, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subId:I

    aget-object v9, v9, v10

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #currentSub:Lcom/android/internal/telephony/msim/Subscription;
    check-cast v1, Lcom/android/internal/telephony/msim/Subscription;

    .restart local v1       #currentSub:Lcom/android/internal/telephony/msim/Subscription;
    iget-object v6, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDeactivatePending:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v9

    iget v10, v4, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subId:I

    aget-object v9, v9, v10

    invoke-virtual {v6, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v6, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    iget v9, v4, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subId:I

    if-ne v6, v9, :cond_4

    invoke-static {}, Lcom/android/internal/telephony/msim/MSimProxyManager;->getInstance()Lcom/android/internal/telephony/msim/MSimProxyManager;

    move-result-object v6

    iget v9, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    invoke-virtual {v6, v9}, Lcom/android/internal/telephony/msim/MSimProxyManager;->enableDataConnectivity(I)V

    goto/16 :goto_2

    :cond_9
    const-string v0, "DEACTIVATE FAILED"

    goto :goto_5

    :cond_a
    const-string v6, "UNKOWN: SHOULD NOT HIT HERE"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_b
    iget-object v6, v4, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    sget-object v9, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v6, v9, :cond_c

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "subscription of SUB:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v9, v4, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subId:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " Activated"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    sget-object v5, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    const-string v0, "ACTIVATE SUCCESS"

    iget-object v6, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mActivatePending:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v9

    iget v10, v4, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subId:I

    aget-object v9, v9, v10

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #currentSub:Lcom/android/internal/telephony/msim/Subscription;
    check-cast v1, Lcom/android/internal/telephony/msim/Subscription;

    .restart local v1       #currentSub:Lcom/android/internal/telephony/msim/Subscription;
    iget-object v6, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mActivatePending:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v9

    iget v10, v4, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subId:I

    aget-object v9, v9, v10

    invoke-virtual {v6, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_c
    iget-object v6, v4, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    sget-object v9, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_DEACTIVATE:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v6, v9, :cond_d

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "subscription of SUB:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v9, v4, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subId:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " Deactivated"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    sget-object v5, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_DEACTIVATED:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    const-string v0, "DEACTIVATE SUCCESS"

    iget-object v6, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDeactivatePending:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v9

    iget v10, v4, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subId:I

    aget-object v9, v9, v10

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #currentSub:Lcom/android/internal/telephony/msim/Subscription;
    check-cast v1, Lcom/android/internal/telephony/msim/Subscription;

    .restart local v1       #currentSub:Lcom/android/internal/telephony/msim/Subscription;
    iget-object v6, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDeactivatePending:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v9

    iget v10, v4, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subId:I

    aget-object v9, v9, v10

    invoke-virtual {v6, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v6, v4, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subId:I

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/SubscriptionManager;->notifySubscriptionDeactivated(I)V

    goto/16 :goto_2

    :cond_d
    const-string v6, "UNKOWN: SHOULD NOT HIT HERE"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_e
    iget v9, v4, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subId:I

    sget-object v6, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v5, v6, :cond_f

    move v6, v7

    :goto_6
    invoke-direct {p0, v9, v6}, Lcom/android/internal/telephony/msim/SubscriptionManager;->updateSubscriptionReadiness(IZ)V

    goto/16 :goto_3

    :cond_f
    move v6, v8

    goto :goto_6

    .restart local v3       #intent:Landroid/content/Intent;
    :cond_10
    move v7, v8

    goto/16 :goto_4
.end method

.method private processSetUiccSubscriptionExtDone(Landroid/os/AsyncResult;)V
    .locals 9
    .parameter "ar"

    .prologue
    const/4 v8, 0x0

    iget-object v3, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;

    .local v3, setSubParam:Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;
    const/4 v0, 0x0

    .local v0, cause:Ljava/lang/String;
    sget-object v4, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_INVALID:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    .local v4, subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;
    const/4 v1, 0x0

    .local v1, currentSub:Lcom/android/internal/telephony/msim/Subscription;
    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_7

    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v5, v5, Lcom/android/internal/telephony/CommandException;

    if-eqz v5, :cond_0

    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v5, Lcom/android/internal/telephony/CommandException;

    check-cast v5, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    .local v2, error:Lcom/android/internal/telephony/CommandException$Error;
    if-eqz v2, :cond_0

    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->SUBSCRIPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v2, v5, :cond_0

    const-string v0, "DEACTIVATE NOT SUPPORTED"

    .end local v2           #error:Lcom/android/internal/telephony/CommandException$Error;
    :cond_0
    iget-object v5, v3, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    sget-object v6, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v5, v6, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "subscription of SUB:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Activate Failed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    if-nez v0, :cond_1

    const-string v0, "ACTIVATE FAILED"

    :cond_1
    sget-object v4, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_DEACTIVATED:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mActivatePending:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v6

    iget v7, v3, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subId:I

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #currentSub:Lcom/android/internal/telephony/msim/Subscription;
    check-cast v1, Lcom/android/internal/telephony/msim/Subscription;

    .restart local v1       #currentSub:Lcom/android/internal/telephony/msim/Subscription;
    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mActivatePending:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v6

    iget v7, v3, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subId:I

    aget-object v6, v6, v7

    invoke-virtual {v5, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetUiccSubExtMsg:Landroid/os/Message;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetUiccSubExtMsg:Landroid/os/Message;

    invoke-static {v5, v8, v8}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetUiccSubExtMsg:Landroid/os/Message;

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    return-void

    :cond_3
    iget-object v5, v3, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    sget-object v6, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_DEACTIVATE:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v5, v6, :cond_6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "subscription of SUB:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Deactivate Failed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    if-nez v0, :cond_4

    iget v5, v3, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subId:I

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/SubscriptionManager;->isAnyPendingActivateRequest(I)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v0, "ACTIVATE FAILED"

    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mActivatePending:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v6

    iget v7, v3, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subId:I

    aget-object v6, v6, v7

    invoke-virtual {v5, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_1
    sget-object v4, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDeactivatePending:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v6

    iget v7, v3, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subId:I

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #currentSub:Lcom/android/internal/telephony/msim/Subscription;
    check-cast v1, Lcom/android/internal/telephony/msim/Subscription;

    .restart local v1       #currentSub:Lcom/android/internal/telephony/msim/Subscription;
    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDeactivatePending:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v6

    iget v7, v3, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subId:I

    aget-object v6, v6, v7

    invoke-virtual {v5, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    const-string v0, "DEACTIVATE FAILED"

    goto :goto_1

    :cond_6
    const-string v5, "UNKOWN: SHOULD NOT HIT HERE"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    iget-object v5, v3, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    sget-object v6, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v5, v6, :cond_8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "subscription of SUB:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Activated"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    sget-object v4, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    const-string v0, "ACTIVATE SUCCESS"

    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mActivatePending:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v6

    iget v7, v3, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subId:I

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #currentSub:Lcom/android/internal/telephony/msim/Subscription;
    check-cast v1, Lcom/android/internal/telephony/msim/Subscription;

    .restart local v1       #currentSub:Lcom/android/internal/telephony/msim/Subscription;
    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mActivatePending:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v6

    iget v7, v3, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subId:I

    aget-object v6, v6, v7

    invoke-virtual {v5, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_8
    iget-object v5, v3, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    sget-object v6, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_DEACTIVATE:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v5, v6, :cond_9

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "subscription of SUB:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Deactivated"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    sget-object v4, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_DEACTIVATED:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    const-string v0, "DEACTIVATE SUCCESS"

    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDeactivatePending:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v6

    iget v7, v3, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subId:I

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #currentSub:Lcom/android/internal/telephony/msim/Subscription;
    check-cast v1, Lcom/android/internal/telephony/msim/Subscription;

    .restart local v1       #currentSub:Lcom/android/internal/telephony/msim/Subscription;
    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDeactivatePending:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v6

    iget v7, v3, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subId:I

    aget-object v6, v6, v7

    invoke-virtual {v5, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_9
    const-string v5, "UNKOWN: SHOULD NOT HIT HERE"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private processSubscriptionStatusChanged(Landroid/os/AsyncResult;)V
    .locals 8
    .parameter "ar"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v2, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    .local v2, subId:Ljava/lang/Integer;
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    aget v0, v3, v5

    .local v0, actStatus:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleSubscriptionStatusChanged sub = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " actStatus = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mRadioOn:[Z

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-boolean v3, v3, v6

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processSubscriptionStatusChanged: Radio Not Available on subId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v0, v4, :cond_3

    move v3, v4

    :goto_1
    invoke-direct {p0, v6, v3}, Lcom/android/internal/telephony/msim/SubscriptionManager;->updateSubscriptionReadiness(IZ)V

    if-ne v0, v4, :cond_6

    iget-boolean v3, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetDdsRequired:Z

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v6, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    if-ne v3, v6, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDeactivatePending:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget-object v6, v6, v7

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setDataSubscription on "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v6, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    iput v3, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mQueuedDds:I

    iput-boolean v4, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDisableDdsInProgress:Z

    const/4 v3, 0x6

    new-instance v4, Ljava/lang/Integer;

    iget v6, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    invoke-direct {v4, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {p0, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .local v1, msgSetDdsDone:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    iget v4, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    aget-object v3, v3, v4

    invoke-interface {v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->setDataSubscription(Landroid/os/Message;)V

    iput-boolean v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetDdsRequired:Z

    .end local v1           #msgSetDdsDone:Landroid/os/Message;
    :cond_2
    :goto_2
    iget-boolean v3, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->bSupportGlobalMode:Z

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/msim/SubscriptionManager;->isSubActive(I)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "curr sub = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v4, v4, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscription(I)Lcom/android/internal/telephony/msim/Subscription;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v4, v4, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/msim/Subscription;->copyFrom(Lcom/android/internal/telephony/msim/Subscription;)Lcom/android/internal/telephony/msim/Subscription;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/msim/SubscriptionManager;->notifySubscriptionActivated(I)V

    goto/16 :goto_0

    :cond_3
    move v3, v5

    goto/16 :goto_1

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDataSubscription on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ignore, need deactive this sub"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/msim/SubscriptionManager;->notifySubscriptionActivated(I)V

    goto/16 :goto_0

    :cond_6
    if-nez v0, :cond_8

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    if-ne v3, v4, :cond_7

    const-string v3, "Register for the all data disconnect"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/telephony/msim/MSimProxyManager;->getInstance()Lcom/android/internal/telephony/msim/MSimProxyManager;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x8

    new-instance v6, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4, p0, v5, v6}, Lcom/android/internal/telephony/msim/MSimProxyManager;->registerForAllDataDisconnected(ILandroid/os/Handler;ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_7
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v3, v3, v4

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/msim/SubscriptionManager;->resetCurrentSubscription(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)V

    invoke-direct {p0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->updateSubPreferences()V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/msim/SubscriptionManager;->notifySubscriptionDeactivated(I)V

    invoke-direct {p0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->triggerUpdateFromAvaialbleCards()V

    goto/16 :goto_0

    :cond_8
    const-string v3, "handleSubscriptionStatusChanged INVALID"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private resetCurrentSubscription(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)V
    .locals 2
    .parameter "subId"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscription(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/msim/Subscription;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/msim/Subscription;->clear()V

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscription(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/msim/Subscription;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_DEACTIVATED:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    iput-object v1, v0, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentSubscriptions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/msim/SubscriptionManager$PhoneSubscriptionInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/telephony/msim/SubscriptionManager$PhoneSubscriptionInfo;->cause:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentSubscriptions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/msim/SubscriptionManager$PhoneSubscriptionInfo;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/internal/telephony/msim/SubscriptionManager$PhoneSubscriptionInfo;->subReady:Z

    return-void
.end method

.method private setSubscriptionDSDA(Lcom/android/internal/telephony/msim/SubscriptionData;)V
    .locals 10
    .parameter "subData"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v5, "SubscriptionManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setSubscriptionDSDA :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSubResult:[Ljava/lang/String;

    const-string v6, "NO CHANGE IN SUBSCRIPTION"

    aput-object v6, v5, v8

    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSubResult:[Ljava/lang/String;

    const-string v6, "NO CHANGE IN SUBSCRIPTION"

    aput-object v6, v5, v9

    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v0

    .local v0, arr$:[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v4, v0, v2

    .local v4, subId:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    sget-object v5, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_DEACTIVATE:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    iget-object v6, p1, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    invoke-virtual {v4}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->ordinal()I

    move-result v7

    aget-object v6, v6, v7

    iget-object v6, v6, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v5, v6, :cond_0

    sget-object v5, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_DEACTIVATED:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscriptionStatus(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    move-result-object v6

    if-eq v5, v6, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDesiredRadioStates:[Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v4}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->ordinal()I

    move-result v6

    sget-object v7, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    aput-object v7, v5, v6

    const/4 v1, 0x0

    .local v1, bRadioPower:Z
    :goto_1
    const-string v5, "SubscriptionManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setSubscriptionDSDA, subId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->ordinal()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", radio="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCardInfoAvailable:[Z

    invoke-virtual {v4}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->ordinal()I

    move-result v6

    aput-boolean v9, v5, v6

    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v4}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->ordinal()I

    move-result v6

    aget-object v5, v5, v6

    invoke-interface {v5}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDesiredRadioStates:[Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v4}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->ordinal()I

    move-result v7

    aget-object v6, v6, v7

    if-ne v5, v6, :cond_2

    const-string v5, "SubscriptionManager"

    const-string v6, "setSubscriptionDSDA, no change radio state, just update user pref!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscription(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/msim/Subscription;

    move-result-object v5

    iget-object v6, p1, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    invoke-virtual {v4}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->ordinal()I

    move-result v7

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/msim/Subscription;->copyFrom(Lcom/android/internal/telephony/msim/Subscription;)Lcom/android/internal/telephony/msim/Subscription;

    invoke-virtual {v4}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->ordinal()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/SubscriptionManager;->processRadioStateChanged(I)V

    .end local v1           #bRadioPower:Z
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_0
    sget-object v5, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    iget-object v6, p1, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    invoke-virtual {v4}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->ordinal()I

    move-result v7

    aget-object v6, v6, v7

    iget-object v6, v6, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v5, v6, :cond_1

    sget-object v5, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscriptionStatus(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    move-result-object v6

    if-eq v5, v6, :cond_1

    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDesiredRadioStates:[Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v4}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->ordinal()I

    move-result v6

    sget-object v7, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    aput-object v7, v5, v6

    const/4 v1, 0x1

    .restart local v1       #bRadioPower:Z
    goto/16 :goto_1

    .end local v1           #bRadioPower:Z
    :cond_1
    const-string v5, "SubscriptionManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "nothing to do for SUB"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->ordinal()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .restart local v1       #bRadioPower:Z
    :cond_2
    const-string v5, "SubscriptionManager"

    const-string v6, "setSubscriptionDSDA, change radio state!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mOperationDones:[Z

    invoke-virtual {v4}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->ordinal()I

    move-result v6

    aput-boolean v8, v5, v6

    invoke-virtual {v4}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->ordinal()I

    move-result v5

    invoke-static {v5}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5, v1}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscription(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/msim/Subscription;

    move-result-object v5

    iget-object v6, p1, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    invoke-virtual {v4}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->ordinal()I

    move-result v7

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/msim/Subscription;->copyFrom(Lcom/android/internal/telephony/msim/Subscription;)Lcom/android/internal/telephony/msim/Subscription;

    goto :goto_2

    .end local v1           #bRadioPower:Z
    .end local v4           #subId:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    :cond_3
    return-void
.end method

.method private setSubscriptionMode()Z
    .locals 10

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    .local v3, numSubsciptions:I
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v0

    .local v0, arr$:[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v6, v0, v1

    .local v6, sub:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    iget-object v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mActivatePending:Ljava/util/HashMap;

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/msim/Subscription;

    .local v4, pendingSub:Lcom/android/internal/telephony/msim/Subscription;
    if-eqz v4, :cond_0

    iget-object v8, v4, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    sget-object v9, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v8, v9, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v4           #pendingSub:Lcom/android/internal/telephony/msim/Subscription;
    .end local v6           #sub:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setSubscriptionMode numSubsciptions = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    if-lez v3, :cond_2

    sget v8, Lcom/android/internal/telephony/msim/SubscriptionManager;->NUM_SUBSCRIPTIONS:I

    if-gt v3, v8, :cond_2

    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-static {p0, v8, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .local v5, setSubsModeDone:Landroid/os/Message;
    iget-object v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v7, v8, v7

    invoke-interface {v7, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->setSubscriptionMode(ILandroid/os/Message;)V

    const/4 v7, 0x1

    .end local v5           #setSubsModeDone:Landroid/os/Message;
    :cond_2
    return v7
.end method

.method private startNextPendingActivateRequests()Z
    .locals 12

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->printPendingActivateRequests()V

    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v6

    .local v6, arr$:[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    array-length v8, v6

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_0
    if-ge v7, v8, :cond_3

    aget-object v11, v6, v7

    .local v11, sub:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mActivatePending:Ljava/util/HashMap;

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/msim/Subscription;

    .local v9, newSub:Lcom/android/internal/telephony/msim/Subscription;
    if-eqz v9, :cond_0

    iget-object v0, v9, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    sget-object v1, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v0, v1, :cond_0

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/msim/SubscriptionManager;->validateActivationRequest(Lcom/android/internal/telephony/msim/Subscription;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mActivatePending:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "persist.radio.hw.ctmode"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    invoke-static {}, Lcom/android/internal/telephony/msim/MSimProxyManager;->getInstance()Lcom/android/internal/telephony/msim/MSimProxyManager;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/msim/MSimProxyManager;->checkAndUpdatePhoneObject(Lcom/android/internal/telephony/msim/Subscription;)V

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startNextPendingActivateRequests: Activating SUB : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    new-instance v10, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;

    iget v0, v9, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    iget-object v1, v9, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    invoke-direct {v10, p0, v0, v1}, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;-><init>(Lcom/android/internal/telephony/msim/SubscriptionManager;ILcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;)V

    .local v10, setSubParam:Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;
    const/4 v0, 0x4

    invoke-static {p0, v0, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .local v5, msgSetUiccSubDone:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    iget v1, v9, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    aget-object v0, v0, v1

    iget v1, v9, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    invoke-virtual {v9}, Lcom/android/internal/telephony/msim/Subscription;->getAppIndex()I

    move-result v2

    iget v3, v9, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    iget-object v4, v9, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    invoke-virtual {v4}, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->ordinal()I

    move-result v4

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->setUiccSubscription(IIIILandroid/os/Message;)V

    const/4 v0, 0x1

    .end local v5           #msgSetUiccSubDone:Landroid/os/Message;
    .end local v9           #newSub:Lcom/android/internal/telephony/msim/Subscription;
    .end local v10           #setSubParam:Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;
    .end local v11           #sub:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    :goto_1
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private startNextPendingDeactivateRequests()Z
    .locals 14

    .prologue
    const/4 v13, 0x1

    invoke-direct {p0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->printPendingDeactivateRequests()V

    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v7

    .local v7, arr$:[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    array-length v9, v7

    .local v9, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_0
    if-ge v8, v9, :cond_3

    aget-object v12, v7, v8

    .local v12, sub:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDeactivatePending:Ljava/util/HashMap;

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/telephony/msim/Subscription;

    .local v10, newSub:Lcom/android/internal/telephony/msim/Subscription;
    if-eqz v10, :cond_0

    iget-object v0, v10, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    sget-object v1, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_DEACTIVATE:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v0, v1, :cond_0

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/msim/SubscriptionManager;->validateDeactivationRequest(Lcom/android/internal/telephony/msim/Subscription;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDeactivatePending:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startNextPendingDeactivateRequests: Need to deactivating SUB : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    iget v1, v10, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDataActive:Z

    if-eqz v0, :cond_2

    const-string v0, "Deactivate all the data calls if there is any"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    const/4 v0, 0x7

    iget v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .local v6, allDataCleanedUpMsg:Landroid/os/Message;
    invoke-static {}, Lcom/android/internal/telephony/msim/MSimProxyManager;->getInstance()Lcom/android/internal/telephony/msim/MSimProxyManager;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    invoke-virtual {v0, v1, v6}, Lcom/android/internal/telephony/msim/MSimProxyManager;->disableDataConnectivity(ILandroid/os/Message;)V

    iput-boolean v13, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetDdsRequired:Z

    .end local v6           #allDataCleanedUpMsg:Landroid/os/Message;
    :goto_1
    move v0, v13

    .end local v10           #newSub:Lcom/android/internal/telephony/msim/Subscription;
    .end local v12           #sub:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    :goto_2
    return v0

    .restart local v10       #newSub:Lcom/android/internal/telephony/msim/Subscription;
    .restart local v12       #sub:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    :cond_2
    const-string v0, "startNextPendingDeactivateRequests: Deactivating now"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    new-instance v11, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;

    iget v0, v10, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    iget-object v1, v10, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    invoke-direct {v11, p0, v0, v1}, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;-><init>(Lcom/android/internal/telephony/msim/SubscriptionManager;ILcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;)V

    .local v11, setSubParam:Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;
    const/4 v0, 0x4

    invoke-static {p0, v0, v11}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .local v5, msgSetUiccSubDone:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    iget v1, v10, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    aget-object v0, v0, v1

    iget v1, v10, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    invoke-virtual {v10}, Lcom/android/internal/telephony/msim/Subscription;->getAppIndex()I

    move-result v2

    iget v3, v10, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    iget-object v4, v10, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    invoke-virtual {v4}, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->ordinal()I

    move-result v4

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->setUiccSubscription(IIIILandroid/os/Message;)V

    goto :goto_1

    .end local v5           #msgSetUiccSubDone:Landroid/os/Message;
    .end local v10           #newSub:Lcom/android/internal/telephony/msim/Subscription;
    .end local v11           #setSubParam:Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;
    .end local v12           #sub:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private triggerUpdateFromAvaialbleCards()V
    .locals 1

    .prologue
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private updateActivatePendingList(I)V
    .locals 7
    .parameter "cardIndex"

    .prologue
    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCardInfoAvailable:[Z

    aget-boolean v5, v5, p1

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCardSubMgr:Lcom/android/internal/telephony/msim/CardSubscriptionManager;

    invoke-virtual {v5, p1}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->getCardSubscriptions(I)Lcom/android/internal/telephony/msim/SubscriptionData;

    move-result-object v0

    .local v0, cardSubInfo:Lcom/android/internal/telephony/msim/SubscriptionData;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateActivatePendingList: cardIndex = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n Card Sub Info = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v5, v5, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v4, v5, p1

    .local v4, userSub:Lcom/android/internal/telephony/msim/Subscription;
    iget v3, v4, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    .local v3, subId:I
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscription(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/msim/Subscription;

    move-result-object v1

    .local v1, currentSub:Lcom/android/internal/telephony/msim/Subscription;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateActivatePendingList: subId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n user pref sub = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n current sub   = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    iget-object v5, v4, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    sget-object v6, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v5, v6, :cond_0

    iget-object v5, v1, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    sget-object v6, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-eq v5, v6, :cond_0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/msim/SubscriptionData;->hasSubscription(Lcom/android/internal/telephony/msim/Subscription;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/SubscriptionManager;->isPresentInActivatePendingList(Lcom/android/internal/telephony/msim/Subscription;)Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateActivatePendingList: subId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " need to activate!!!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    new-instance v2, Lcom/android/internal/telephony/msim/Subscription;

    invoke-direct {v2}, Lcom/android/internal/telephony/msim/Subscription;-><init>()V

    .local v2, sub:Lcom/android/internal/telephony/msim/Subscription;
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/msim/SubscriptionData;->getSubscription(Lcom/android/internal/telephony/msim/Subscription;)Lcom/android/internal/telephony/msim/Subscription;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/msim/Subscription;->copyFrom(Lcom/android/internal/telephony/msim/Subscription;)Lcom/android/internal/telephony/msim/Subscription;

    iput p1, v2, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    iput v3, v2, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    sget-object v5, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    iput-object v5, v2, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mActivatePending:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v6

    aget-object v6, v6, v3

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v2           #sub:Lcom/android/internal/telephony/msim/Subscription;
    :cond_0
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/msim/SubscriptionData;->hasSubscription(Lcom/android/internal/telephony/msim/Subscription;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mIsNewCard:[Z

    const/4 v6, 0x0

    aput-boolean v6, v5, p1

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateActivatePendingList: mIsNewCard ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mIsNewCard:[Z

    aget-boolean v6, v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .end local v0           #cardSubInfo:Lcom/android/internal/telephony/msim/SubscriptionData;
    .end local v1           #currentSub:Lcom/android/internal/telephony/msim/Subscription;
    .end local v3           #subId:I
    .end local v4           #userSub:Lcom/android/internal/telephony/msim/Subscription;
    :cond_1
    return-void

    .restart local v0       #cardSubInfo:Lcom/android/internal/telephony/msim/SubscriptionData;
    .restart local v1       #currentSub:Lcom/android/internal/telephony/msim/Subscription;
    .restart local v3       #subId:I
    .restart local v4       #userSub:Lcom/android/internal/telephony/msim/Subscription;
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mIsNewCard:[Z

    const/4 v6, 0x1

    aput-boolean v6, v5, p1

    goto :goto_0
.end method

.method private updateCurrentSubscription(ILcom/android/internal/telephony/msim/Subscription;Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;Ljava/lang/String;)V
    .locals 3
    .parameter "subId"
    .parameter "subscription"
    .parameter "subStatus"
    .parameter "cause"

    .prologue
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v1

    aget-object v0, v1, p1

    .local v0, sub:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCurrentSubscription: subId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " subStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n subscription = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne p3, v1, :cond_1

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscription(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/msim/Subscription;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/msim/Subscription;->copyFrom(Lcom/android/internal/telephony/msim/Subscription;)Lcom/android/internal/telephony/msim/Subscription;

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscription(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/msim/Subscription;

    move-result-object v1

    iput-object p3, v1, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-nez p4, :cond_0

    const-string p4, "NO CHANGE IN SUBSCRIPTION"

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentSubscriptions:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/msim/SubscriptionManager$PhoneSubscriptionInfo;

    iput-object p4, v1, Lcom/android/internal/telephony/msim/SubscriptionManager$PhoneSubscriptionInfo;->cause:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentSubscriptions:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/msim/SubscriptionManager$PhoneSubscriptionInfo;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/internal/telephony/msim/SubscriptionManager$PhoneSubscriptionInfo;->subReady:Z

    return-void

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscription(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/msim/Subscription;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/msim/Subscription;->clear()V

    sget-object p3, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_DEACTIVATED:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    goto :goto_0
.end method

.method private updateSubPreferences()V
    .locals 13

    .prologue
    const/4 v12, 0x6

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v1, 0x0

    .local v1, activeSubCount:I
    const/4 v0, 0x0

    .local v0, activeSub:Lcom/android/internal/telephony/msim/Subscription;
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v2

    .local v2, arr$:[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    array-length v5, v2

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v6, v2, v4

    .local v6, sub:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscriptionStatus(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v8, v9, :cond_0

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscription(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/msim/Subscription;

    move-result-object v0

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v6           #sub:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    :cond_1
    const/4 v8, 0x2

    if-ne v8, v1, :cond_2

    iget-object v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mcardDefault:[Z

    aget-boolean v8, v8, v10

    if-ne v11, v8, :cond_2

    iget-object v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mcardDefault:[Z

    aget-boolean v8, v8, v11

    if-ne v11, v8, :cond_2

    const/4 v1, 0x1

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscription(I)Lcom/android/internal/telephony/msim/Subscription;

    move-result-object v0

    iget-object v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mcardDefault:[Z

    aput-boolean v10, v8, v10

    iget-object v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mcardDefault:[Z

    aput-boolean v10, v8, v11

    :cond_2
    if-ne v1, v11, :cond_6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateSubPreferences: only SUB:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is Active.  Update the default/voice/sms and data subscriptions"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    iget v8, v0, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    invoke-static {v8}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->setVoiceSubscription(I)V

    iget v8, v0, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    invoke-static {v8}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->setSMSSubscription(I)V

    invoke-static {v10}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->setPromptEnabled(Z)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateSubPreferences: current defaultSub = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->getDefaultSubscription()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateSubPreferences: current mCurrentDds = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->getDefaultSubscription()I

    move-result v8

    iget v9, v0, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    if-eq v8, v9, :cond_3

    iget v8, v0, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    invoke-static {v8}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->setDefaultSubscription(I)V

    :cond_3
    iget v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    iget v9, v0, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    if-eq v8, v9, :cond_4

    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v8

    iget v9, v0, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    aget-object v7, v8, v9

    .local v7, subId:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscriptionReadiness(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget v8, v0, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    iput v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mQueuedDds:I

    iget v8, v0, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v12, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .local v3, callback:Landroid/os/Message;
    iput-boolean v11, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDisableDdsInProgress:Z

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "update setDataSubscription to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    iget v9, v0, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    aget-object v8, v8, v9

    invoke-interface {v8, v3}, Lcom/android/internal/telephony/CommandsInterface;->setDataSubscription(Landroid/os/Message;)V

    iput-boolean v10, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetDdsRequired:Z

    .end local v3           #callback:Landroid/os/Message;
    .end local v7           #subId:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    :cond_4
    :goto_1
    return-void

    .restart local v7       #subId:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    :cond_5
    iput-boolean v11, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetDdsRequired:Z

    iget v8, v0, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    iput v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    goto :goto_1

    .end local v7           #subId:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    :cond_6
    iget-boolean v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->IS_CHINA_TELECOM:Z

    if-eqz v8, :cond_4

    if-eqz v0, :cond_4

    iget-object v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "gsm_enable_ct"

    invoke-static {v8, v9, v10}, Landroid/provider/SettingsEx$Systemex;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-nez v8, :cond_4

    invoke-static {}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->getDataSubscription()I

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v8

    aget-object v7, v8, v10

    .restart local v7       #subId:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscriptionReadiness(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)Z

    move-result v8

    if-eqz v8, :cond_7

    iput v10, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mQueuedDds:I

    iget v8, v0, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v12, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .restart local v3       #callback:Landroid/os/Message;
    iput-boolean v11, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDisableDdsInProgress:Z

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "update setDataSubscription to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v8, v8, v10

    invoke-interface {v8, v3}, Lcom/android/internal/telephony/CommandsInterface;->setDataSubscription(Landroid/os/Message;)V

    iput-boolean v10, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetDdsRequired:Z

    goto :goto_1

    .end local v3           #callback:Landroid/os/Message;
    :cond_7
    iput-boolean v11, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetDdsRequired:Z

    iput v10, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    goto :goto_1
.end method

.method private updateSubscriptionReadiness(IZ)V
    .locals 3
    .parameter "subId"
    .parameter "ready"

    .prologue
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v1

    aget-object v0, v1, p1

    .local v0, sub:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSubscriptionReadiness("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscription(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/msim/Subscription;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    sget-object v2, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentSubscriptions:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/msim/SubscriptionManager$PhoneSubscriptionInfo;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/internal/telephony/msim/SubscriptionManager$PhoneSubscriptionInfo;->subReady:Z

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentSubscriptions:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/msim/SubscriptionManager$PhoneSubscriptionInfo;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/internal/telephony/msim/SubscriptionManager$PhoneSubscriptionInfo;->subReady:Z

    goto :goto_0
.end method

.method private validateActivationRequest(Lcom/android/internal/telephony/msim/Subscription;)Z
    .locals 3
    .parameter "sub"

    .prologue
    iget-object v0, p1, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    sget-object v1, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    if-ltz v0, :cond_0

    iget v0, p1, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    sget v1, Lcom/android/internal/telephony/msim/SubscriptionManager;->NUM_SUBSCRIPTIONS:I

    if-ge v0, v1, :cond_0

    iget v0, p1, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    if-ltz v0, :cond_0

    iget v0, p1, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    sget v1, Lcom/android/internal/telephony/msim/SubscriptionManager;->NUM_SUBSCRIPTIONS:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/msim/Subscription;->getAppIndex()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCardSubMgr:Lcom/android/internal/telephony/msim/CardSubscriptionManager;

    iget v1, p1, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->getCardSubscriptions(I)Lcom/android/internal/telephony/msim/SubscriptionData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/msim/Subscription;->getAppIndex()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCardSubMgr:Lcom/android/internal/telephony/msim/CardSubscriptionManager;

    iget v2, p1, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->getCardSubscriptions(I)Lcom/android/internal/telephony/msim/SubscriptionData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/msim/SubscriptionData;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private validateDeactivationRequest(Lcom/android/internal/telephony/msim/Subscription;)Z
    .locals 3
    .parameter "sub"

    .prologue
    iget-object v0, p1, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    sget-object v1, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_DEACTIVATE:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    if-ltz v0, :cond_0

    iget v0, p1, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    sget v1, Lcom/android/internal/telephony/msim/SubscriptionManager;->NUM_SUBSCRIPTIONS:I

    if-ge v0, v1, :cond_0

    iget v0, p1, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    if-ltz v0, :cond_0

    iget v0, p1, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    sget v1, Lcom/android/internal/telephony/msim/SubscriptionManager;->NUM_SUBSCRIPTIONS:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/msim/Subscription;->getAppIndex()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCardSubMgr:Lcom/android/internal/telephony/msim/CardSubscriptionManager;

    iget v1, p1, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->getCardSubscriptions(I)Lcom/android/internal/telephony/msim/SubscriptionData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/msim/Subscription;->getAppIndex()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCardSubMgr:Lcom/android/internal/telephony/msim/CardSubscriptionManager;

    iget v2, p1, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->getCardSubscriptions(I)Lcom/android/internal/telephony/msim/SubscriptionData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/msim/SubscriptionData;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public MSimHwSetSubscription(Lcom/android/internal/telephony/msim/SubscriptionData;)V
    .locals 2
    .parameter "subData"

    .prologue
    new-instance v0, Lcom/android/internal/telephony/msim/SubscriptionData;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/msim/SubscriptionData;-><init>(I)V

    .local v0, local_subData:Lcom/android/internal/telephony/msim/SubscriptionData;
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/msim/SubscriptionData;->copyFrom(Lcom/android/internal/telephony/msim/SubscriptionData;)Lcom/android/internal/telephony/msim/SubscriptionData;

    const/16 v1, 0x69

    invoke-static {p0, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public clearPendingQueue()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v0

    .local v0, arr$:[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .local v3, sub:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    iget-object v4, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mActivatePending:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDeactivatePending:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v3           #sub:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    :cond_0
    return-void
.end method

.method public clearUserPrefWhenChangeMode(I)V
    .locals 10
    .parameter "nMode"

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    const-string v5, "SubscriptionManager"

    const-string v6, "clearUserPrefWhenChangeMode"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v0

    .local v0, arr$:[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .local v3, subId:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ",,,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_INVALID:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    invoke-virtual {v6}, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->ordinal()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .local v4, userSub:Ljava/lang/String;
    const/4 v5, 0x1

    if-ne v5, p1, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v5, v5, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v5, v5, v9

    iget-object v5, v5, Lcom/android/internal/telephony/msim/Subscription;->iccId:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v5, v5, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v5, v5, v9

    iget-object v5, v5, Lcom/android/internal/telephony/msim/Subscription;->iccId:Ljava/lang/String;

    :goto_1
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_2
    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/Settings$System;->USER_PREFERRED_SUBS:[Ljava/lang/String;

    invoke-virtual {v3}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->ordinal()I

    move-result v7

    aget-object v6, v6, v7

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v5, " "

    goto :goto_1

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .end local v3           #subId:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    .end local v4           #userSub:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public getActiveSubscriptionsCount()I
    .locals 8

    .prologue
    const/4 v0, 0x0

    .local v0, activeSubCount:I
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v1

    .local v1, arr$:[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v1, v2

    .local v4, sub:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscriptionStatus(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v5, v6, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v4           #sub:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    :cond_1
    const-string v5, "SubscriptionManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "count of subs activated "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getCurrentSubscription(I)Lcom/android/internal/telephony/msim/Subscription;
    .locals 1
    .parameter "subId"

    .prologue
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscription(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/msim/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentSubscriptionOnSlot(I)Lcom/android/internal/telephony/msim/Subscription;
    .locals 4
    .parameter "slotId"

    .prologue
    const/4 v1, 0x0

    .local v1, sub:Lcom/android/internal/telephony/msim/Subscription;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget v2, Lcom/android/internal/telephony/msim/SubscriptionManager;->NUM_SUBSCRIPTIONS:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentSubscriptions:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/msim/SubscriptionManager$PhoneSubscriptionInfo;

    iget-object v1, v2, Lcom/android/internal/telephony/msim/SubscriptionManager$PhoneSubscriptionInfo;->sub:Lcom/android/internal/telephony/msim/Subscription;

    if-eqz v1, :cond_1

    iget v2, v1, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    if-ne v2, p1, :cond_1

    :cond_0
    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getLastIccidInfo()[Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mlastIccIds:[Ljava/lang/String;

    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget v4, Lcom/android/internal/telephony/msim/SubscriptionManager;->NUM_SUBSCRIPTIONS:I

    if-ge v1, v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Settings$System;->USER_PREFERRED_SUBS:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, strUserSub:Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v4, "SubscriptionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "i = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "SubscriptionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getUserPreferredSubs: strUserSub = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .local v2, splitUserSub:[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mlastIccIds:[Ljava/lang/String;

    const/4 v5, 0x7

    aget-object v5, v2, v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getStringFrom(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v4, "SubscriptionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getLastIccidInfo(): mlastIccIds[i] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mlastIccIds:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #splitUserSub:[Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, ex:Ljava/lang/Exception;
    const-string v4, "SubscriptionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getmlastIccIds: Exception = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mlastIccIds:[Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v5, v4, v1

    goto :goto_1

    .end local v0           #ex:Ljava/lang/Exception;
    .end local v3           #strUserSub:Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mlastIccIds:[Ljava/lang/String;

    invoke-virtual {v4}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    check-cast v4, [Ljava/lang/String;

    return-object v4
.end method

.method public getPreferredNetworkType(ILandroid/os/Message;)V
    .locals 3
    .parameter "subId"
    .parameter "onCompleteMsg"

    .prologue
    const-string v1, "SubscriptionManager"

    const-string v2, "getPreferredNetworkType"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p2, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mGetPrefNetTypeMsg:Landroid/os/Message;

    const/16 v1, 0x67

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .local v0, msgGet:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, p1

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getPreferredNetworkType(Landroid/os/Message;)V

    return-void
.end method

.method public getSlotIdFromSubId(I)I
    .locals 6
    .parameter "subId"

    .prologue
    const/4 v4, 0x1

    const/4 v2, -0x1

    if-ltz p1, :cond_0

    if-le p1, v4, :cond_1

    :cond_0
    move p1, v2

    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_1
    iget-boolean v3, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mHuaweiDSDA:Z

    if-eqz v3, :cond_2

    const-string v2, "SubscriptionManager"

    const-string v3, "DSDA, slotId == subId"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscription(I)Lcom/android/internal/telephony/msim/Subscription;

    move-result-object v1

    .local v1, sub:Lcom/android/internal/telephony/msim/Subscription;
    iget v3, v1, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    if-eqz v3, :cond_3

    iget v3, v1, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    if-ne v3, v4, :cond_4

    :cond_3
    iget-object v3, v1, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    sget-object v4, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v3, v4, :cond_4

    iget v3, v1, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    if-ne v3, p1, :cond_4

    iget p1, v1, Lcom/android/internal/telephony/msim/Subscription;->slotId:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v1           #sub:Lcom/android/internal/telephony/msim/Subscription;
    :catch_0
    move-exception v0

    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "zhangfeng"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSlotIdFromSubId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v2

    goto :goto_0

    .end local v0           #ex:Ljava/lang/Exception;
    .restart local v1       #sub:Lcom/android/internal/telephony/msim/Subscription;
    :cond_4
    move p1, v2

    goto :goto_0
.end method

.method public getSubidFromSlotId(I)I
    .locals 7
    .parameter "slotId"

    .prologue
    const/4 v3, -0x1

    if-ltz p1, :cond_0

    const/4 v4, 0x2

    if-le p1, v4, :cond_1

    :cond_0
    move p1, v3

    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_1
    iget-boolean v4, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mHuaweiDSDA:Z

    if-eqz v4, :cond_2

    const-string v3, "SubscriptionManager"

    const-string v4, "DSDA, slotId == subId"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .local v0, culsub:Lcom/android/internal/telephony/msim/Subscription;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    :try_start_0
    sget v4, Lcom/android/internal/telephony/msim/SubscriptionManager;->NUM_SUBSCRIPTIONS:I

    if-ge v2, v4, :cond_4

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscription(I)Lcom/android/internal/telephony/msim/Subscription;

    move-result-object v0

    iget-object v4, v0, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    sget-object v5, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v4, v5, :cond_3

    iget v4, v0, Lcom/android/internal/telephony/msim/Subscription;->slotId:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v4, p1, :cond_3

    move p1, v2

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    .local v1, ex:Ljava/lang/Exception;
    const-string v4, "zhangfeng"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSubidFromSlotId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v3

    goto :goto_0

    .end local v1           #ex:Ljava/lang/Exception;
    :cond_4
    move p1, v3

    goto :goto_0
.end method

.method public getUserPrefRadioState(I)Z
    .locals 3
    .parameter "subId"

    .prologue
    const/4 v0, 0x1

    .local v0, bRet:Z
    sget-object v1, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_DEACTIVATED:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    iget-object v2, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public getUserPrefSubStatus(I)Z
    .locals 7
    .parameter "slotid"

    .prologue
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    if-nez v5, :cond_0

    const-string v5, "SubscriptionManager"

    const-string v6, "null == mUserPrefSubs"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v4

    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v0, v5, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    .local v0, arr$:[Lcom/android/internal/telephony/msim/Subscription;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .local v3, userSub:Lcom/android/internal/telephony/msim/Subscription;
    iget v5, v3, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    if-ne v5, p1, :cond_2

    iget-object v5, v3, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    sget-object v6, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-eq v5, v6, :cond_1

    iget-object v5, v3, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    sget-object v6, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v5, v6, :cond_2

    :cond_1
    const-string v4, "SubscriptionManager"

    const-string v5, "getUserPrefSubStatus:true"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v3           #userSub:Lcom/android/internal/telephony/msim/Subscription;
    :cond_3
    const-string v5, "SubscriptionManager"

    const-string v6, "getUserPrefSubStatus:false"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getUserSubInfo()Lcom/android/internal/telephony/msim/SubscriptionData;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    .local v4, subId:Ljava/lang/Integer;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_RADIO_OFF_OR_NOT_AVAILABLE on SUB: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mRadioOn:[Z

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput-boolean v7, v5, v6

    invoke-direct {p0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->isAllRadioOn()Z

    move-result v5

    if-nez v5, :cond_0

    iput-boolean v7, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetSubscriptionInProgress:Z

    iput-boolean v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetDdsRequired:Z

    goto :goto_0

    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v4           #subId:Ljava/lang/Integer;
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    .restart local v4       #subId:Ljava/lang/Integer;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_RADIO_ON on SUB: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mRadioOn:[Z

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput-boolean v8, v5, v6

    goto :goto_0

    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v4           #subId:Ljava/lang/Integer;
    :sswitch_2
    const-string v5, "EVENT_CARD_INFO_AVAILABLE"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/SubscriptionManager;->processCardInfoAvailable(Landroid/os/AsyncResult;)V

    goto :goto_0

    :sswitch_3
    const-string v5, "EVENT_CARD_INFO_NOT_AVAILABLE"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/SubscriptionManager;->processCardInfoNotAvailable(Landroid/os/AsyncResult;)V

    goto :goto_0

    :sswitch_4
    const-string v5, "EVENT_ALL_CARD_INFO_AVAILABLE"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->processAllCardsInfoAvailable()V

    goto :goto_0

    :sswitch_5
    const-string v5, "EVENT_SET_SUBSCRIPTION_MODE_DONE"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->processSetSubscriptionModeDone()V

    goto/16 :goto_0

    :sswitch_6
    const-string v5, "EVENT_SET_UICC_SUBSCRIPTION_DONE"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/SubscriptionManager;->processSetUiccSubscriptionDone(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    :sswitch_7
    const-string v5, "EVENT_SUBSCRIPTION_STATUS_CHANGED"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/SubscriptionManager;->processSubscriptionStatusChanged(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    :sswitch_8
    const-string v5, "EVENT_CLEANUP_DATA_CONNECTION_DONE"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/SubscriptionManager;->processCleanupDataConnectionDone(Ljava/lang/Integer;)V

    goto/16 :goto_0

    :sswitch_9
    const-string v5, "EVENT_SET_DATA_SUBSCRIPTION_DONE"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/SubscriptionManager;->processSetDataSubscriptionDone(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    :sswitch_a
    const-string v5, "SubscriptionManager"

    const-string v6, "EVENT_ALL_DATA_DISCONNECTED"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/SubscriptionManager;->processAllDataDisconnected(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    :sswitch_b
    const-string v5, "SubscriptionManager"

    const-string v6, "EVENT_RADIO_STATE_CHANGED"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mHuaweiDSDA:Z

    if-eqz v5, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/SubscriptionManager;->processRadioStateChanged(I)V

    goto/16 :goto_0

    .end local v0           #ar:Landroid/os/AsyncResult;
    :sswitch_c
    const-string v5, "SubscriptionManager"

    const-string v6, "EVENT_DISABLE_DATA_CONNECTION_DONE_DSDA"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mHuaweiDSDA:Z

    if-eqz v5, :cond_0

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/SubscriptionManager;->processDisableDataConnectionDoneDSDA(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    :sswitch_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_1

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [I

    check-cast v5, [I

    aget v2, v5, v7

    .local v2, nType:I
    :goto_1
    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mGetPrefNetTypeMsg:Landroid/os/Message;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mGetPrefNetTypeMsg:Landroid/os/Message;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6, v9}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mGetPrefNetTypeMsg:Landroid/os/Message;

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .end local v2           #nType:I
    :cond_1
    const/4 v2, -0x1

    .restart local v2       #nType:I
    goto :goto_1

    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v2           #nType:I
    :sswitch_e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_2

    const/4 v1, 0x1

    .local v1, bResult:Z
    :goto_2
    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetPrefNetTypeMsg:Landroid/os/Message;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetPrefNetTypeMsg:Landroid/os/Message;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v5, v6, v9}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetPrefNetTypeMsg:Landroid/os/Message;

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .end local v1           #bResult:Z
    :cond_2
    const/4 v1, 0x0

    .restart local v1       #bResult:Z
    goto :goto_2

    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v1           #bResult:Z
    :sswitch_f
    const-string v5, "EVENT_SET_UICC_SUBSCRIPTION_EXT_DONE"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/SubscriptionManager;->processSetUiccSubscriptionExtDone(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    :sswitch_10
    const-string v5, "EVENT_SET_SUBSCRIPTION_GLOBAL_MODE"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/msim/SubscriptionData;

    .local v3, subData:Lcom/android/internal/telephony/msim/SubscriptionData;
    if-eqz v3, :cond_0

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/msim/SubscriptionManager;->setSubscription(Lcom/android/internal/telephony/msim/SubscriptionData;)Z

    goto/16 :goto_0

    .end local v3           #subData:Lcom/android/internal/telephony/msim/SubscriptionData;
    :sswitch_11
    const-string v5, "SubscriptionManager"

    const-string v6, "EVENT_PROCESS_AVAILABLE_CARDS"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->processAvailableCards()V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_3
        0x2 -> :sswitch_4
        0x3 -> :sswitch_5
        0x4 -> :sswitch_6
        0x5 -> :sswitch_7
        0x6 -> :sswitch_9
        0x7 -> :sswitch_8
        0x8 -> :sswitch_a
        0x9 -> :sswitch_1
        0xa -> :sswitch_0
        0xb -> :sswitch_11
        0x65 -> :sswitch_b
        0x66 -> :sswitch_c
        0x67 -> :sswitch_d
        0x68 -> :sswitch_e
        0x69 -> :sswitch_10
        0xc9 -> :sswitch_f
    .end sparse-switch
.end method

.method public isCardPresent(I)Z
    .locals 5
    .parameter "slotId"

    .prologue
    const/4 v2, 0x0

    if-ltz p1, :cond_0

    const/4 v3, 0x2

    if-le p1, v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v1

    .local v1, uiccCard:Lcom/android/internal/telephony/uicc/UiccCard;
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .end local v1           #uiccCard:Lcom/android/internal/telephony/uicc/UiccCard;
    :catch_0
    move-exception v0

    .local v0, ex:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public isSetSubscriptionInProgress()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetSubscriptionInProgress:Z

    return v0
.end method

.method public isSubActive(I)Z
    .locals 3
    .parameter "subscription"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscription(I)Lcom/android/internal/telephony/msim/Subscription;

    move-result-object v0

    .local v0, currentSelSub:Lcom/android/internal/telephony/msim/Subscription;
    iget-object v1, v0, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    sget-object v2, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method notifyNewCardsAvailable()V
    .locals 3

    .prologue
    const-string v1, "notifyNewCardsAvailable"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, setSubscriptionIntent:Landroid/content/Intent;
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.SetSubscription"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "NOTIFY_NEW_CARD_AVAILABLE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public declared-synchronized registerForSetSubscriptionCompleted(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetSubscriptionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .end local v0           #r:Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public registerForSubscriptionActivated(ILandroid/os/Handler;ILjava/lang/Object;)V
    .locals 4
    .parameter "subId"
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p2, p3, p4}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSubActivatedRegistrants:[Landroid/os/RegistrantList;

    aget-object v2, v1, p1

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSubActivatedRegistrants:[Landroid/os/RegistrantList;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->isSubActive(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSubActivatedRegistrants:[Landroid/os/RegistrantList;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    :goto_0
    monitor-exit v2

    return-void

    :cond_0
    const-string v1, "SubscriptionManager"

    const-string v3, "registerForSubscriptionActivated: Subscription is not activated"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForSubscriptionActivatedOnSlot(ILandroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "slotId"
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p2, p3, p4}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSubActivatedRegistrantsOnSlot:[Landroid/os/RegistrantList;

    aget-object v2, v1, p1

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSubActivatedRegistrantsOnSlot:[Landroid/os/RegistrantList;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForSubscriptionDeactivated(ILandroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "subId"
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p2, p3, p4}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSubDeactivatedRegistrants:[Landroid/os/RegistrantList;

    aget-object v2, v1, p1

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSubDeactivatedRegistrants:[Landroid/os/RegistrantList;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForSubscriptionDeactivatedOnSlot(ILandroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "slotId"
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p2, p3, p4}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSubDeactivatedRegistrantsOnSlot:[Landroid/os/RegistrantList;

    aget-object v2, v1, p1

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSubDeactivatedRegistrantsOnSlot:[Landroid/os/RegistrantList;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resumeSubscriptionDSDA()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const-string v1, "SubscriptionManager"

    const-string v2, "resumeSubscriptionDSDA"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget v1, Lcom/android/internal/telephony/msim/SubscriptionManager;->NUM_SUBSCRIPTIONS:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCardInfoAvailable:[Z

    aget-boolean v1, v1, v0

    if-ne v4, v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->processCardInfoAvailableDSDA(I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "SubscriptionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "radio on sub "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1, v4}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public saveUserPreferredSubscription(ILcom/android/internal/telephony/msim/Subscription;)V
    .locals 6
    .parameter "subIndex"
    .parameter "userPrefSub"

    .prologue
    sget v3, Lcom/android/internal/telephony/msim/SubscriptionManager;->NUM_SUBSCRIPTIONS:I

    if-ge p1, v3, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const-string v3, "SubscriptionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saveUserPreferredSubscription: INVALID PARAMETERS: subIndex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " userPrefSub = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v3, v3, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v3, v3, p1

    invoke-virtual {v3, p2}, Lcom/android/internal/telephony/msim/Subscription;->copyFrom(Lcom/android/internal/telephony/msim/Subscription;)Lcom/android/internal/telephony/msim/Subscription;

    iget-object v3, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v3, v3, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v3, v3, p1

    iput p1, v3, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p2, Lcom/android/internal/telephony/msim/Subscription;->iccId:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p2, Lcom/android/internal/telephony/msim/Subscription;->iccId:Ljava/lang/String;

    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p2, Lcom/android/internal/telephony/msim/Subscription;->appType:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p2, Lcom/android/internal/telephony/msim/Subscription;->appType:Ljava/lang/String;

    :goto_2
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p2, Lcom/android/internal/telephony/msim/Subscription;->appId:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p2, Lcom/android/internal/telephony/msim/Subscription;->appId:Ljava/lang/String;

    :goto_3
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p2, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    invoke-virtual {v4}, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->ordinal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/android/internal/telephony/msim/Subscription;->m3gppIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/android/internal/telephony/msim/Subscription;->m3gpp2Index:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, userSub:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCardSubMgr:Lcom/android/internal/telephony/msim/CardSubscriptionManager;

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->getCardSubscriptions(I)Lcom/android/internal/telephony/msim/SubscriptionData;

    move-result-object v0

    .local v0, cardSubData:Lcom/android/internal/telephony/msim/SubscriptionData;
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/android/internal/telephony/msim/SubscriptionData;->getIccId()Ljava/lang/String;

    move-result-object v1

    .local v1, mIccIds:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v1, :cond_5

    .end local v1           #mIccIds:Ljava/lang/String;
    :goto_4
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveUserPreferredSubscription: userPrefSub = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveUserPreferredSubscription: userSub = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Settings$System;->USER_PREFERRED_SUBS:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .end local v0           #cardSubData:Lcom/android/internal/telephony/msim/SubscriptionData;
    .end local v2           #userSub:Ljava/lang/String;
    :cond_2
    const-string v3, ""

    goto/16 :goto_1

    :cond_3
    const-string v3, ""

    goto/16 :goto_2

    :cond_4
    const-string v3, ""

    goto/16 :goto_3

    .restart local v0       #cardSubData:Lcom/android/internal/telephony/msim/SubscriptionData;
    .restart local v1       #mIccIds:Ljava/lang/String;
    .restart local v2       #userSub:Ljava/lang/String;
    :cond_5
    const-string v1, " "

    goto :goto_4

    .end local v1           #mIccIds:Ljava/lang/String;
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_5
.end method

.method public setCardInfoAvailable(I)V
    .locals 2
    .parameter "cardIndex"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCardInfoAvailable:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    return-void
.end method

.method public setCardInfoAvailable(IZ)V
    .locals 1
    .parameter "cardIndex"
    .parameter "available"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCardInfoAvailable:[Z

    aput-boolean p2, v0, p1

    return-void
.end method

.method public setDataSubscription(ILandroid/os/Message;)V
    .locals 7
    .parameter "subscription"
    .parameter "onCompleteMsg"

    .prologue
    const/4 v3, 0x0

    .local v3, result:Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setDataSubscription: mCurrentDds = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " new subscription = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mHuaweiDSDA:Z

    if-eqz v4, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/msim/SubscriptionManager;->setDataSubscriptionDSDA(ILandroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v4, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDisableDdsInProgress:Z

    if-nez v4, :cond_4

    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v4

    aget-object v4, v4, p1

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscriptionReadiness(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setDataSubscription: requested SUB:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not yet activated, returning failure"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v4, "Subscription not active"

    invoke-direct {v0, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .local v0, exception:Ljava/lang/RuntimeException;
    :goto_1
    if-eqz p2, :cond_0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {p2, v4, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .end local v0           #exception:Ljava/lang/RuntimeException;
    :cond_2
    iget v4, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    if-eq v4, p1, :cond_3

    invoke-static {}, Lcom/android/internal/telephony/msim/MSimProxyManager;->getInstance()Lcom/android/internal/telephony/msim/MSimProxyManager;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/msim/MSimProxyManager;->disableDataConnectivityFlag(I)Z

    move-result v1

    .local v1, flag:Z
    iput-object p2, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetDdsCompleteMsg:Landroid/os/Message;

    iput p1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mQueuedDds:I

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDisableDdsInProgress:Z

    const/4 v4, 0x6

    new-instance v5, Ljava/lang/Integer;

    iget v6, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mQueuedDds:I

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {p0, v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .local v2, msgSetDataSub:Landroid/os/Message;
    const-string v4, "SubscriptionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Set DDS to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mQueuedDds:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Calling cmd interface setDataSubscription"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    iget v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mQueuedDds:I

    aget-object v4, v4, v5

    invoke-interface {v4, v2}, Lcom/android/internal/telephony/CommandsInterface;->setDataSubscription(Landroid/os/Message;)V

    goto/16 :goto_0

    .end local v1           #flag:Z
    .end local v2           #msgSetDataSub:Landroid/os/Message;
    :cond_3
    const-string v4, "Current subscription is same as requested Subscription"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    const/4 v3, 0x1

    const/4 v0, 0x0

    .restart local v0       #exception:Ljava/lang/RuntimeException;
    goto :goto_1

    .end local v0           #exception:Ljava/lang/RuntimeException;
    :cond_4
    const-string v4, "DDS switch in progress. Sending false"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v4, "DDS switch in progress"

    invoke-direct {v0, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .restart local v0       #exception:Ljava/lang/RuntimeException;
    goto :goto_1
.end method

.method public setDataSubscriptionDSDA(ILandroid/os/Message;)V
    .locals 5
    .parameter "subscription"
    .parameter "onCompleteMsg"

    .prologue
    const/4 v4, 0x1

    const-string v1, "SubscriptionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDataSubscriptionDSDA, sub="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mQueuedDds:I

    invoke-static {}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->getDataSubscription()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    iget v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mQueuedDds:I

    iget v2, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    if-ne v1, v2, :cond_1

    if-nez p2, :cond_1

    iget v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mQueuedDds:I

    invoke-static {v1}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->setDataSubscription(I)V

    invoke-static {}, Lcom/android/internal/telephony/msim/MSimProxyManager;->getInstance()Lcom/android/internal/telephony/msim/MSimProxyManager;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/msim/MSimProxyManager;->updateDataConnectionTracker(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mQueuedDds:I

    iget v2, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    if-ne v1, v2, :cond_2

    const-string v1, "SubscriptionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDataSubscriptionDSDA: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p2, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    iget v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mQueuedDds:I

    invoke-static {v1}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->setDataSubscription(I)V

    invoke-static {}, Lcom/android/internal/telephony/msim/MSimProxyManager;->getInstance()Lcom/android/internal/telephony/msim/MSimProxyManager;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/msim/MSimProxyManager;->updateDataConnectionTracker(I)V

    goto :goto_0

    :cond_2
    iput-object p2, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetDdsCompleteMsg:Landroid/os/Message;

    iget-boolean v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDisableDdsInProgress:Z

    if-nez v1, :cond_0

    const/16 v1, 0x66

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, allDataDisabledMsg:Landroid/os/Message;
    invoke-static {}, Lcom/android/internal/telephony/msim/MSimProxyManager;->getInstance()Lcom/android/internal/telephony/msim/MSimProxyManager;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/msim/MSimProxyManager;->disableDataConnectivity(ILandroid/os/Message;)V

    iput-boolean v4, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDisableDdsInProgress:Z

    goto :goto_0
.end method

.method public setDefaultFlag()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mcardDefault:[Z

    const/4 v1, 0x0

    aput-boolean v2, v0, v1

    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mcardDefault:[Z

    aput-boolean v2, v0, v2

    return-void
.end method

.method public setDefaultSubscription(Lcom/android/internal/telephony/msim/SubscriptionData;I)V
    .locals 3
    .parameter "subData"
    .parameter "subId"

    .prologue
    iget-boolean v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mHuaweiDSDA:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->setSubscription(Lcom/android/internal/telephony/msim/SubscriptionData;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mcardDefault:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queue active subscription, subId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    new-instance v0, Lcom/android/internal/telephony/msim/Subscription;

    invoke-direct {v0}, Lcom/android/internal/telephony/msim/Subscription;-><init>()V

    .local v0, newSub:Lcom/android/internal/telephony/msim/Subscription;
    iget-object v1, p1, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/msim/Subscription;->copyFrom(Lcom/android/internal/telephony/msim/Subscription;)Lcom/android/internal/telephony/msim/Subscription;

    iget-object v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mActivatePending:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v2

    aget-object v2, v2, p2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setPreferredNetworkType(IILandroid/os/Message;)V
    .locals 4
    .parameter "subId"
    .parameter "nType"
    .parameter "onCompleteMsg"

    .prologue
    const-string v1, "SubscriptionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPreferredNetworkType, nType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p3, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetPrefNetTypeMsg:Landroid/os/Message;

    const/16 v1, 0x68

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .local v0, msgGet:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, p1

    invoke-interface {v1, p2, v0}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    return-void
.end method

.method public setSubscription(Lcom/android/internal/telephony/msim/SubscriptionData;)Z
    .locals 14
    .parameter "subData"

    .prologue
    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v9, 0x1

    const/4 v7, 0x0

    .local v7, ret:Z
    const/4 v1, 0x0

    .local v1, bNeedContinue:Z
    iget-boolean v11, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mHuaweiDSDA:Z

    if-eqz v11, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->setSubscriptionDSDA(Lcom/android/internal/telephony/msim/SubscriptionData;)V

    :goto_0
    return v9

    :cond_0
    iget-boolean v11, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetSubscriptionInProgress:Z

    if-eqz v11, :cond_1

    const-string v9, "setSubscription : mSetSubscriptionInProgress is true, return"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    move v9, v10

    goto :goto_0

    :cond_1
    iget-object v11, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSubResult:[Ljava/lang/String;

    const-string v12, "NO CHANGE IN SUBSCRIPTION"

    aput-object v12, v11, v10

    iget-object v11, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSubResult:[Ljava/lang/String;

    const-string v12, "NO CHANGE IN SUBSCRIPTION"

    aput-object v12, v11, v9

    const/4 v2, 0x0

    .local v2, cardActiveButNotReady:Z
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v0

    .local v0, arr$:[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_3

    aget-object v8, v0, v4

    .local v8, subId:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscriptionReadiness(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)Z

    move-result v11

    if-nez v11, :cond_2

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscriptionStatus(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v11, v12, :cond_2

    const/4 v2, 0x0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v8           #subId:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    :cond_3
    iget-boolean v11, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDisableDdsInProgress:Z

    if-nez v11, :cond_4

    if-eqz v2, :cond_8

    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setSubscription : mDisableDdsInProgress is "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v11, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDisableDdsInProgress:Z

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ", cardActiveButNotReady is "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v0

    array-length v5, v0

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v5, :cond_7

    aget-object v8, v0, v4

    .restart local v8       #subId:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscription(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/msim/Subscription;

    move-result-object v9

    iget-object v11, p1, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    invoke-virtual {v8}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->ordinal()I

    move-result v12

    aget-object v11, v11, v12

    invoke-virtual {v9, v11}, Lcom/android/internal/telephony/msim/Subscription;->equals(Lcom/android/internal/telephony/msim/Subscription;)Z

    move-result v9

    if-nez v9, :cond_6

    sget-object v9, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_DEACTIVATE:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    iget-object v11, p1, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    invoke-virtual {v8}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->ordinal()I

    move-result v12

    aget-object v11, v11, v12

    iget-object v11, v11, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v9, v11, :cond_5

    iget-object v9, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSubResult:[Ljava/lang/String;

    invoke-virtual {v8}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->ordinal()I

    move-result v11

    const-string v12, "DEACTIVATE FAILED"

    aput-object v12, v9, v11

    :cond_5
    sget-object v9, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    iget-object v11, p1, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    invoke-virtual {v8}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->ordinal()I

    move-result v12

    aget-object v11, v11, v12

    iget-object v11, v11, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v9, v11, :cond_6

    iget-object v9, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSubResult:[Ljava/lang/String;

    invoke-virtual {v8}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->ordinal()I

    move-result v11

    const-string v12, "ACTIVATE FAILED"

    aput-object v12, v9, v11

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v8           #subId:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    :cond_7
    iget-object v9, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetSubscriptionRegistrants:Landroid/os/RegistrantList;

    new-instance v11, Landroid/os/AsyncResult;

    iget-object v12, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSubResult:[Ljava/lang/String;

    invoke-direct {v11, v13, v12, v13}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v9, v11}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    move v9, v10

    goto/16 :goto_0

    :cond_8
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setSubscription :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v0

    array-length v5, v0

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v5, :cond_10

    aget-object v8, v0, v4

    .restart local v8       #subId:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscription(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/msim/Subscription;

    move-result-object v10

    iget-object v11, p1, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    invoke-virtual {v8}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->ordinal()I

    move-result v12

    aget-object v11, v11, v12

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/msim/Subscription;->equals(Lcom/android/internal/telephony/msim/Subscription;)Z

    move-result v10

    if-nez v10, :cond_c

    iget-boolean v10, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->bSupportGlobalMode:Z

    if-eqz v10, :cond_b

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "current sub["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->ordinal()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscription(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/msim/Subscription;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "input sub = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    invoke-virtual {v8}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->ordinal()I

    move-result v12

    aget-object v11, v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    sget-object v10, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    iget-object v11, p1, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    invoke-virtual {v8}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->ordinal()I

    move-result v12

    aget-object v11, v11, v12

    iget-object v11, v11, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v10, v11, :cond_a

    sget-object v10, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscriptionStatus(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    move-result-object v11

    if-ne v10, v11, :cond_a

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscription(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/msim/Subscription;

    move-result-object v10

    iget-object v11, p1, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    invoke-virtual {v8}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->ordinal()I

    move-result v12

    aget-object v11, v11, v12

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/msim/Subscription;->isSame(Lcom/android/internal/telephony/msim/Subscription;)Z

    move-result v10

    if-eqz v10, :cond_a

    const-string v10, "already activated, return success directly!"

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSubResult:[Ljava/lang/String;

    invoke-virtual {v8}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->ordinal()I

    move-result v11

    const-string v12, "ACTIVATE SUCCESS"

    aput-object v12, v10, v11

    invoke-virtual {v8}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->ordinal()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/msim/SubscriptionManager;->notifySubscriptionActivated(I)V

    :cond_9
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    :cond_a
    sget-object v10, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_DEACTIVATED:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscriptionStatus(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    move-result-object v11

    if-ne v10, v11, :cond_b

    sget-object v10, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_DEACTIVATE:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    iget-object v11, p1, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    invoke-virtual {v8}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->ordinal()I

    move-result v12

    aget-object v11, v11, v12

    iget-object v11, v11, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v10, v11, :cond_b

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscription(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/msim/Subscription;

    move-result-object v10

    iget-object v11, p1, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    invoke-virtual {v8}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->ordinal()I

    move-result v12

    aget-object v11, v11, v12

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/msim/Subscription;->isSame(Lcom/android/internal/telephony/msim/Subscription;)Z

    move-result v10

    if-eqz v10, :cond_b

    const-string v10, "already Deactivated, return success directly!"

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSubResult:[Ljava/lang/String;

    invoke-virtual {v8}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->ordinal()I

    move-result v11

    const-string v12, "DEACTIVATE SUCCESS"

    aput-object v12, v10, v11

    invoke-virtual {v8}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->ordinal()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/msim/SubscriptionManager;->notifySubscriptionDeactivated(I)V

    goto :goto_4

    :cond_b
    iget-object v10, p1, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    invoke-virtual {v8}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->ordinal()I

    move-result v11

    aget-object v10, v10, v11

    iget-object v10, v10, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    sget-object v11, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_INVALID:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-eq v10, v11, :cond_f

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscriptionStatus(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v10, v11, :cond_f

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Need to deactivate current SUB :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    new-instance v6, Lcom/android/internal/telephony/msim/Subscription;

    invoke-direct {v6}, Lcom/android/internal/telephony/msim/Subscription;-><init>()V

    .local v6, newSub:Lcom/android/internal/telephony/msim/Subscription;
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscription(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/msim/Subscription;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/android/internal/telephony/msim/Subscription;->copyFrom(Lcom/android/internal/telephony/msim/Subscription;)Lcom/android/internal/telephony/msim/Subscription;

    sget-object v10, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_DEACTIVATE:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    iput-object v10, v6, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    iget-object v10, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDeactivatePending:Ljava/util/HashMap;

    invoke-virtual {v10, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v6           #newSub:Lcom/android/internal/telephony/msim/Subscription;
    :cond_c
    :goto_5
    iget-object v10, p1, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    invoke-virtual {v8}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->ordinal()I

    move-result v11

    aget-object v10, v10, v11

    iget-object v10, v10, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    sget-object v11, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v10, v11, :cond_d

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Need to activate new SUB : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    new-instance v6, Lcom/android/internal/telephony/msim/Subscription;

    invoke-direct {v6}, Lcom/android/internal/telephony/msim/Subscription;-><init>()V

    .restart local v6       #newSub:Lcom/android/internal/telephony/msim/Subscription;
    iget-object v10, p1, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    invoke-virtual {v8}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->ordinal()I

    move-result v11

    aget-object v10, v10, v11

    invoke-virtual {v6, v10}, Lcom/android/internal/telephony/msim/Subscription;->copyFrom(Lcom/android/internal/telephony/msim/Subscription;)Lcom/android/internal/telephony/msim/Subscription;

    iget-object v10, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mActivatePending:Ljava/util/HashMap;

    invoke-virtual {v10, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v6           #newSub:Lcom/android/internal/telephony/msim/Subscription;
    :cond_d
    iget-boolean v10, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->bSupportGlobalMode:Z

    if-eqz v10, :cond_9

    iget-object v10, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mActivatePending:Ljava/util/HashMap;

    invoke-virtual {v10, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_e

    iget-object v10, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDeactivatePending:Ljava/util/HashMap;

    invoke-virtual {v10, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_9

    :cond_e
    const/4 v1, 0x1

    goto/16 :goto_4

    :cond_f
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscriptionStatus(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_DEACTIVATED:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v10, v11, :cond_c

    iget-object v10, p1, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    invoke-virtual {v8}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->ordinal()I

    move-result v11

    aget-object v10, v10, v11

    iget-object v10, v10, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    sget-object v11, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_DEACTIVATE:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v10, v11, :cond_c

    goto :goto_5

    .end local v8           #subId:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    :cond_10
    iget-boolean v10, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->bSupportGlobalMode:Z

    if-eqz v10, :cond_11

    if-nez v1, :cond_11

    iget-object v10, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetSubscriptionRegistrants:Landroid/os/RegistrantList;

    if-eqz v10, :cond_11

    const-string v10, "send setSubscription completed event 2!"

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetSubscriptionRegistrants:Landroid/os/RegistrantList;

    new-instance v11, Landroid/os/AsyncResult;

    iget-object v12, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSubResult:[Ljava/lang/String;

    invoke-direct {v11, v13, v12, v13}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v10, v11}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    :cond_11
    iget-boolean v10, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetSubscriptionInProgress:Z

    if-nez v10, :cond_12

    invoke-direct {p0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->startNextPendingDeactivateRequests()Z

    move-result v3

    .local v3, deactivateInProgress:Z
    if-eqz v3, :cond_14

    iput-boolean v9, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetSubscriptionInProgress:Z

    .end local v3           #deactivateInProgress:Z
    :cond_12
    :goto_6
    iget-boolean v9, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetSubscriptionInProgress:Z

    if-eqz v9, :cond_13

    const/4 v7, 0x1

    :cond_13
    move v9, v7

    goto/16 :goto_0

    .restart local v3       #deactivateInProgress:Z
    :cond_14
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->processActivateRequests()V

    goto :goto_6
.end method

.method public setUiccSubscriptionExt(ILcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;Landroid/os/Message;)V
    .locals 7
    .parameter "appIndex"
    .parameter "subStatus"
    .parameter "onCompleteMsg"

    .prologue
    const/4 v1, 0x0

    iput-object p3, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetUiccSubExtMsg:Landroid/os/Message;

    new-instance v6, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;

    invoke-direct {v6, p0, v1, p2}, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;-><init>(Lcom/android/internal/telephony/msim/SubscriptionManager;ILcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;)V

    .local v6, setSubParam:Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;
    const/16 v0, 0xc9

    invoke-static {p0, v0, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .local v5, msgGet:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, v1

    invoke-virtual {p2}, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->ordinal()I

    move-result v4

    move v2, p1

    move v3, v1

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->setUiccSubscriptionEx(IIIILandroid/os/Message;)V

    return-void
.end method

.method public declared-synchronized unRegisterForSetSubscriptionCompleted(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetSubscriptionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unregisterForSubscriptionActivated(ILandroid/os/Handler;)V
    .locals 2
    .parameter "subId"
    .parameter "h"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSubActivatedRegistrants:[Landroid/os/RegistrantList;

    aget-object v1, v0, p1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSubActivatedRegistrants:[Landroid/os/RegistrantList;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterForSubscriptionActivatedOnSlot(ILandroid/os/Handler;)V
    .locals 2
    .parameter "slotId"
    .parameter "h"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSubActivatedRegistrantsOnSlot:[Landroid/os/RegistrantList;

    aget-object v1, v0, p1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSubActivatedRegistrantsOnSlot:[Landroid/os/RegistrantList;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterForSubscriptionDeactivated(ILandroid/os/Handler;)V
    .locals 2
    .parameter "subId"
    .parameter "h"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSubDeactivatedRegistrants:[Landroid/os/RegistrantList;

    aget-object v1, v0, p1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSubDeactivatedRegistrants:[Landroid/os/RegistrantList;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterForSubscriptionDeactivatedOnSlot(ILandroid/os/Handler;)V
    .locals 2
    .parameter "slotId"
    .parameter "h"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSubDeactivatedRegistrantsOnSlot:[Landroid/os/RegistrantList;

    aget-object v1, v0, p1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSubDeactivatedRegistrantsOnSlot:[Landroid/os/RegistrantList;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
