.class public final Lcom/android/server/SmartMemoryCleanService;
.super Landroid/os/Binder;
.source "SmartMemoryCleanService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SmartMemoryCleanService$STProcessRelationRecord;,
        Lcom/android/server/SmartMemoryCleanService$STPkgUsageRecord;,
        Lcom/android/server/SmartMemoryCleanService$DatabaseHelper;,
        Lcom/android/server/SmartMemoryCleanService$STProcessRecord;,
        Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessPkgResume;,
        Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessAddRelation;,
        Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessEvent;,
        Lcom/android/server/SmartMemoryCleanService$SMCSTimerTask;,
        Lcom/android/server/SmartMemoryCleanService$TrimRoundTimerCB;
    }
.end annotation


# static fields
.field private static final DATABASE_VERSION:I = 0x4

.field private static final HW_ST_UPPER_LIMIT:Ljava/lang/String; = "ro.st.upperlimit"

.field private static final HW_ST_UPPER_LIMIT_DEFAULT:I = 0x3

.field private static final MAX_PROCESS_BLACKLIST_NUM_DEFAULT:I = 0x7d0

.field private static final MAX_PROCESS_RELATION_NUM_DEFAULT:I = 0x7d0

.field private static final MAX_SHARE_PKG_PROCESS_NUM_DEFAULT:I = 0x7d0

.field private static final PROCESS_INFO_ATTRIBUTE_VALUE:Ljava/lang/String; = "pkg"

.field private static final PROCESS_INFO_FILE_NAME:Ljava/lang/String; = null

.field private static final PROCESS_INFO_FILE_NAME_DEFAULT:Ljava/lang/String; = "/system/etc/process_info.xml"

.field private static final PROCESS_INFO_TAG_NAME:Ljava/lang/String; = "p"

.field private static final RO_SMART_TRIM_ADJ:Ljava/lang/String; = "ro.smart_trim.adj"

.field private static final RO_SMART_TRIM_OB_PERIOD:Ljava/lang/String; = "ro.smart_trim.ob_period"

.field private static final RO_ST_1ST_TRIM:Ljava/lang/String; = "ro.st.1st_trim"

.field private static final RO_ST_PROCESS_INFO_FILE_NAME:Ljava/lang/String; = "ro.st.process_info_file"

.field private static final RO_ST_TRIM_PERIOD:Ljava/lang/String; = "ro.st.trim_period"

.field private static final RO_USAGESTAT_TOTALTIME:Ljava/lang/String; = "ro.usagestat.totaltime"

.field private static final SMART_TRIM_ADJ_DEFAULT:I = 0x3

#the value of this static final field might be set in the static constructor
.field private static final SMART_TRIM_ADJ_LIMIT:I = 0x0

.field private static final SMART_TRIM_OB_PERIOD_DEFAULT:I = 0x12c

.field private static final SMART_TRIM_TIME_S_2_MS:I = 0x3e8

.field private static final SQL_BEGIN_TRANSACTION:Ljava/lang/String; = "BEGIN TRANSACTION"

.field private static final SQL_COMMIT_TRANSACTION:Ljava/lang/String; = "COMMIT TRANSACTION"

.field private static final ST_1ST_TRIM_DEFAULT:I = 0x78

.field private static final ST_DB_FILENAME:Ljava/lang/String; = "stusagestat.db"

.field private static final ST_DB_FILEPATH:Ljava/lang/String; = "system/stusagestat"

.field private static final ST_POWER_ON_TIME:Ljava/lang/String; = "power_on_time"

.field private static final ST_PROCESS_BLACKLIST_PROCESSNAME:Ljava/lang/String; = "st_process_blacklist_processname"

.field private static final ST_PROCESS_BLACKLIST_TABLE:Ljava/lang/String; = "st_process_blacklist_table"

.field private static final ST_PROCESS_RELATION_CLIENT:Ljava/lang/String; = "st_process_relation_client"

.field private static final ST_PROCESS_RELATION_SERVER:Ljava/lang/String; = "st_process_relation_server"

.field private static final ST_PROCESS_RELATION_TABLE:Ljava/lang/String; = "st_process_relation_table"

.field private static final ST_SMCS_OB_TIMER_OUT:I = 0x1

.field private static final ST_SMCS_START_TRIM_TROUND:I = 0x2

.field private static final ST_TIME_TABLE:Ljava/lang/String; = "st_time_table"

.field private static final ST_TIME_TABLE_NAME:Ljava/lang/String; = "time_name"

.field private static final ST_TIME_TABLE_VALUE:Ljava/lang/String; = "time_value"

.field private static final ST_USAGE_TABLE:Ljava/lang/String; = "st_usage_table"

.field private static final ST_USAGE_TABLE_LATEST_USED_TIME:Ljava/lang/String; = "used_latest_time"

.field private static final ST_USAGE_TABLE_PKGNAME:Ljava/lang/String; = "pkg_name"

.field private static final TAG:Ljava/lang/String; = "SmartMemoryCleanService"

.field private static final TRIM_PERIOD_DEFAULT:I = 0x5

#the value of this static final field might be set in the static constructor
.field private static final TRIM_ROUND_TIMER_PERIOD:I = 0x0

.field private static final USAGESTAT_TOTALTIME_DEFAULT:I = 0xd8

.field private static final localLOGV:Z

.field private static final mDebugEanbled:Z

.field private static final mDebugLocalClass:Z

.field private static final mDebugPerformance:Z

.field private static final mMaxBlacklistNum:I

.field private static final mMaxProcessRelationNum:I

.field private static final mMaxSharePkgProcessNum:I

.field private static final mPowerOnMaxTotalTime:I


# instance fields
.field private mAMS:Landroid/os/IBinder;

.field private mAMSInstance:Lcom/android/server/am/ActivityManagerService;

.field private final mAlwaysAllowStartProcess:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAppWidget:Lcom/android/server/AppWidgetService;

.field private mContext:Landroid/content/Context;

.field private mDBHelper:Lcom/android/server/SmartMemoryCleanService$DatabaseHelper;

.field private mDBRead:Landroid/database/sqlite/SQLiteDatabase;

.field private mDBWrite:Landroid/database/sqlite/SQLiteDatabase;

.field private mFilterTrim:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/SmartMemoryCleanService$STProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mFilterUnTrim:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/SmartMemoryCleanService$STProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mIsSMCSInited:Z

.field private mLastResumedPkg:Ljava/lang/String;

.field mMO:Lcom/android/server/SmartMemoryCleanService$SMCSTimerTask;

.field private mNotification:Lcom/android/server/NotificationManagerService;

.field private mPowerOnTotalTime:I

.field private mRunningList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/SmartMemoryCleanService$STProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mSMCSHandler:Landroid/os/Handler;

.field private mSTBlacklist:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSTMemLowerLimit:J

.field private mSTMemUpperLimit:J

.field private mSTPkgUsage:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/SmartMemoryCleanService$STPkgUsageRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mSTProcessRelations:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/server/SmartMemoryCleanService$STProcessRelationRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mStartTrimApk:Z

.field mTimer:Ljava/util/Timer;

.field mTrimRoundCB:Lcom/android/server/SmartMemoryCleanService$TrimRoundTimerCB;

.field mTrimRoundTimer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/16 v4, 0x7d0

    const/4 v2, 0x0

    const-string v0, "ro.st.trim_period"

    const/4 v3, 0x5

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/SmartMemoryCleanService;->TRIM_ROUND_TIMER_PERIOD:I

    const-string v0, "ro.usagestat.totaltime"

    const/16 v3, 0xd8

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/SmartMemoryCleanService;->mPowerOnMaxTotalTime:I

    const-string v0, "ro.smart_trim.adj"

    const/4 v3, 0x3

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/SmartMemoryCleanService;->SMART_TRIM_ADJ_LIMIT:I

    const-string v0, "ro.enable.st_debug"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/SmartMemoryCleanService;->localLOGV:Z

    sget-boolean v0, Lcom/android/server/SmartMemoryCleanService;->localLOGV:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    sget-boolean v0, Lcom/android/server/SmartMemoryCleanService;->localLOGV:Z

    if-eqz v0, :cond_2

    :goto_1
    sput-boolean v1, Lcom/android/server/SmartMemoryCleanService;->mDebugPerformance:Z

    sget-boolean v0, Lcom/android/server/SmartMemoryCleanService;->localLOGV:Z

    if-eqz v0, :cond_0

    :cond_0
    sput-boolean v2, Lcom/android/server/SmartMemoryCleanService;->mDebugLocalClass:Z

    const-string v0, "ro.st.process_info_file"

    const-string v1, "/system/etc/process_info.xml"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/SmartMemoryCleanService;->PROCESS_INFO_FILE_NAME:Ljava/lang/String;

    const-string v0, "ro.st.max_spp_num"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/SmartMemoryCleanService;->mMaxSharePkgProcessNum:I

    const-string v0, "ro.st.max_procr_num"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/SmartMemoryCleanService;->mMaxProcessRelationNum:I

    const-string v0, "ro.st.max_bl_num"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/SmartMemoryCleanService;->mMaxBlacklistNum:I

    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    const-wide/16 v9, -0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    iput-object v7, p0, Lcom/android/server/SmartMemoryCleanService;->mContext:Landroid/content/Context;

    iput-object v7, p0, Lcom/android/server/SmartMemoryCleanService;->mTimer:Ljava/util/Timer;

    iput-object v7, p0, Lcom/android/server/SmartMemoryCleanService;->mTrimRoundTimer:Ljava/util/Timer;

    iput-object v7, p0, Lcom/android/server/SmartMemoryCleanService;->mMO:Lcom/android/server/SmartMemoryCleanService$SMCSTimerTask;

    iput-object v7, p0, Lcom/android/server/SmartMemoryCleanService;->mTrimRoundCB:Lcom/android/server/SmartMemoryCleanService$TrimRoundTimerCB;

    iput-boolean v8, p0, Lcom/android/server/SmartMemoryCleanService;->mStartTrimApk:Z

    iput-object v7, p0, Lcom/android/server/SmartMemoryCleanService;->mAMS:Landroid/os/IBinder;

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    iput-object v6, p0, Lcom/android/server/SmartMemoryCleanService;->mAlwaysAllowStartProcess:Ljava/util/HashSet;

    iput-object v7, p0, Lcom/android/server/SmartMemoryCleanService;->mDBHelper:Lcom/android/server/SmartMemoryCleanService$DatabaseHelper;

    iput-object v7, p0, Lcom/android/server/SmartMemoryCleanService;->mAMSInstance:Lcom/android/server/am/ActivityManagerService;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/server/SmartMemoryCleanService;->mRunningList:Ljava/util/ArrayList;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/android/server/SmartMemoryCleanService;->mFilterTrim:Ljava/util/HashMap;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/android/server/SmartMemoryCleanService;->mFilterUnTrim:Ljava/util/HashMap;

    iput-object v7, p0, Lcom/android/server/SmartMemoryCleanService;->mAppWidget:Lcom/android/server/AppWidgetService;

    iput-object v7, p0, Lcom/android/server/SmartMemoryCleanService;->mNotification:Lcom/android/server/NotificationManagerService;

    const/4 v6, -0x1

    iput v6, p0, Lcom/android/server/SmartMemoryCleanService;->mPowerOnTotalTime:I

    iput-object v7, p0, Lcom/android/server/SmartMemoryCleanService;->mLastResumedPkg:Ljava/lang/String;

    iput-object v7, p0, Lcom/android/server/SmartMemoryCleanService;->mDBRead:Landroid/database/sqlite/SQLiteDatabase;

    iput-object v7, p0, Lcom/android/server/SmartMemoryCleanService;->mDBWrite:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/android/server/SmartMemoryCleanService;->mSTPkgUsage:Ljava/util/HashMap;

    iput-object v7, p0, Lcom/android/server/SmartMemoryCleanService;->mSTProcessRelations:Ljava/util/HashSet;

    iput-object v7, p0, Lcom/android/server/SmartMemoryCleanService;->mSTBlacklist:Ljava/util/HashSet;

    iput-boolean v8, p0, Lcom/android/server/SmartMemoryCleanService;->mIsSMCSInited:Z

    iput-wide v9, p0, Lcom/android/server/SmartMemoryCleanService;->mSTMemUpperLimit:J

    iput-wide v9, p0, Lcom/android/server/SmartMemoryCleanService;->mSTMemLowerLimit:J

    new-instance v6, Lcom/android/server/SmartMemoryCleanService$1;

    invoke-direct {v6, p0}, Lcom/android/server/SmartMemoryCleanService$1;-><init>(Lcom/android/server/SmartMemoryCleanService;)V

    iput-object v6, p0, Lcom/android/server/SmartMemoryCleanService;->mSMCSHandler:Landroid/os/Handler;

    const-wide/16 v3, -0x1

    .local v3, timeStart:J
    const/4 v5, -0x1

    .local v5, upperLimitTimes:I
    :try_start_0
    sget-boolean v6, Lcom/android/server/SmartMemoryCleanService;->mDebugPerformance:Z

    if-eqz v6, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    :cond_0
    iput-object p1, p0, Lcom/android/server/SmartMemoryCleanService;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/SmartMemoryCleanService;->mAMS:Landroid/os/IBinder;

    iget-object v6, p0, Lcom/android/server/SmartMemoryCleanService;->mAMS:Landroid/os/IBinder;

    if-nez v6, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/SmartMemoryCleanService;->mAMSInstance:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, p0, Lcom/android/server/SmartMemoryCleanService;->mAMSInstance:Lcom/android/server/am/ActivityManagerService;

    if-eqz v6, :cond_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->getHWMemFreeLimit()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/SmartMemoryCleanService;->mSTMemLowerLimit:J

    const-string v6, "ro.st.upperlimit"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x1

    if-gt v5, v6, :cond_3

    const/4 v5, 0x3

    :cond_3
    iget-wide v6, p0, Lcom/android/server/SmartMemoryCleanService;->mSTMemLowerLimit:J

    int-to-long v8, v5

    mul-long/2addr v6, v8

    iput-wide v6, p0, Lcom/android/server/SmartMemoryCleanService;->mSTMemUpperLimit:J

    sget-boolean v6, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v6, :cond_4

    const-string v6, "SmartMemoryCleanService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SmartMemoryCleanService.SmartMemoryCleanService: mSTMemLowerLimit "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/server/SmartMemoryCleanService;->mSTMemLowerLimit:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mSTMemUpperLimit "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/server/SmartMemoryCleanService;->mSTMemUpperLimit:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-direct {p0}, Lcom/android/server/SmartMemoryCleanService;->startMemoryObserve()V

    sget-boolean v6, Lcom/android/server/SmartMemoryCleanService;->mDebugPerformance:Z

    if-eqz v6, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v0, v6, v3

    .local v0, costTime:J
    const-string v6, "SmartMemoryCleanService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SmartMemoryCleanService.SmartMemoryCleanService: cost time "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ms end."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0           #costTime:J
    :catch_0
    move-exception v2

    .local v2, e:Ljava/lang/Exception;
    const-string v6, "SmartMemoryCleanService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SmartMemoryCleanService.SmartMemoryCleanService: catch exception "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/SmartMemoryCleanService;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/server/SmartMemoryCleanService;->handleSMCSTimerOut()V

    return-void
.end method

.method static synthetic access$1000()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/server/SmartMemoryCleanService;->mDebugLocalClass:Z

    return v0
.end method

.method static synthetic access$1100()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-static {}, Lcom/android/server/SmartMemoryCleanService;->getDatabaseName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/SmartMemoryCleanService;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/server/SmartMemoryCleanService;->smartTrimHandleSTPEvents()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/SmartMemoryCleanService;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/server/SmartMemoryCleanService;->smartTrimProcess()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/SmartMemoryCleanService;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/server/SmartMemoryCleanService;->startTrimRoundTimer()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/SmartMemoryCleanService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/SmartMemoryCleanService;->mSMCSHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/SmartMemoryCleanService;)Lcom/android/server/am/ActivityManagerService;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/SmartMemoryCleanService;->mAMSInstance:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/SmartMemoryCleanService;)I
    .locals 1
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/server/SmartMemoryCleanService;->getCurPowerOnTime()I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/SmartMemoryCleanService;)J
    .locals 2
    .parameter "x0"

    .prologue
    iget-wide v0, p0, Lcom/android/server/SmartMemoryCleanService;->mSTMemLowerLimit:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/android/server/SmartMemoryCleanService;)J
    .locals 2
    .parameter "x0"

    .prologue
    iget-wide v0, p0, Lcom/android/server/SmartMemoryCleanService;->mSTMemUpperLimit:J

    return-wide v0
.end method

.method private final addProcessRelation(Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessAddRelation;)Ljava/lang/String;
    .locals 12
    .parameter "e"

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    .local v3, relations:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, client:Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, server:Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, stprr:Lcom/android/server/SmartMemoryCleanService$STProcessRelationRecord;
    if-nez p1, :cond_2

    sget-boolean v9, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v9, :cond_0

    const-string v9, "SmartMemoryCleanService"

    const-string v10, "SmartMemoryCleanService.addProcessRelation: invalid event"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v5, v8

    :cond_1
    :goto_0
    return-object v5

    :cond_2
    :try_start_0
    iget-object v0, p1, Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessAddRelation;->mClientProc:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessAddRelation;->mServerProc:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_5

    :cond_3
    sget-boolean v9, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v9, :cond_4

    const-string v9, "SmartMemoryCleanService"

    const-string v10, "SmartMemoryCleanService.addProcessRelation: invalid client"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-object v5, v8

    goto :goto_0

    :cond_5
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_8

    :cond_6
    sget-boolean v9, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v9, :cond_7

    const-string v9, "SmartMemoryCleanService"

    const-string v10, "SmartMemoryCleanService.addProcessRelation: invalid server"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move-object v5, v8

    goto :goto_0

    :cond_8
    sget-boolean v9, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v9, :cond_9

    const-string v9, "SmartMemoryCleanService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SmartMemoryCleanService.addProcessRelation: client "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " server "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    invoke-direct {p0, v0}, Lcom/android/server/SmartMemoryCleanService;->checkProcessAlwaysAllowStart(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    sget-boolean v9, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v9, :cond_a

    const-string v9, "SmartMemoryCleanService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SmartMemoryCleanService.addProcessRelation: client "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is a key process, need not relations."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    move-object v5, v8

    goto :goto_0

    :cond_b
    invoke-direct {p0, v4}, Lcom/android/server/SmartMemoryCleanService;->checkProcessAlwaysAllowStart(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d

    sget-boolean v9, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v9, :cond_c

    const-string v9, "SmartMemoryCleanService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SmartMemoryCleanService.addProcessRelation: server "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is a key process, need not relations."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    move-object v5, v8

    goto/16 :goto_0

    :cond_d
    iget-object v9, p1, Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessAddRelation;->mClientPkgList:Ljava/util/HashSet;

    iget-object v10, p1, Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessAddRelation;->mServerPkgList:Ljava/util/HashSet;

    invoke-direct {p0, v9, v10}, Lcom/android/server/SmartMemoryCleanService;->isProcessSharePkg(Ljava/util/HashSet;Ljava/util/HashSet;)Z

    move-result v9

    if-eqz v9, :cond_f

    sget-boolean v9, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v9, :cond_e

    const-string v9, "SmartMemoryCleanService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SmartMemoryCleanService.addProcessRelation: server "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " client "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " share pkgs."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    move-object v5, v8

    goto/16 :goto_0

    :cond_f
    invoke-direct {p0, v0, v4}, Lcom/android/server/SmartMemoryCleanService;->isProcessRelationExists(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .local v2, isExist:Z
    if-eqz v2, :cond_11

    sget-boolean v9, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v9, :cond_10

    const-string v9, "SmartMemoryCleanService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SmartMemoryCleanService.addProcessRelation: client "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " server "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " has existed."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    move-object v5, v8

    goto/16 :goto_0

    :cond_11
    const/4 v5, 0x0

    .local v5, sql:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "INSERT INTO st_process_relation_table VALUES (\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' , \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\')"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-boolean v9, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v9, :cond_12

    const-string v9, "SmartMemoryCleanService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SmartMemoryCleanService.addProcessRelation: client "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " server "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " sql "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    iget-object v9, p0, Lcom/android/server/SmartMemoryCleanService;->mSTProcessRelations:Ljava/util/HashSet;

    if-nez v9, :cond_13

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    iput-object v9, p0, Lcom/android/server/SmartMemoryCleanService;->mSTProcessRelations:Ljava/util/HashSet;

    :cond_13
    iget-object v9, p0, Lcom/android/server/SmartMemoryCleanService;->mSTProcessRelations:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->size()I

    move-result v9

    sget v10, Lcom/android/server/SmartMemoryCleanService;->mMaxProcessRelationNum:I

    if-ge v9, v10, :cond_1

    new-instance v7, Lcom/android/server/SmartMemoryCleanService$STProcessRelationRecord;

    invoke-direct {v7, v0, v4}, Lcom/android/server/SmartMemoryCleanService$STProcessRelationRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v6           #stprr:Lcom/android/server/SmartMemoryCleanService$STProcessRelationRecord;
    .local v7, stprr:Lcom/android/server/SmartMemoryCleanService$STProcessRelationRecord;
    :try_start_1
    iget-object v9, p0, Lcom/android/server/SmartMemoryCleanService;->mSTProcessRelations:Ljava/util/HashSet;

    invoke-virtual {v9, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_14

    iget-object v9, p0, Lcom/android/server/SmartMemoryCleanService;->mSTProcessRelations:Ljava/util/HashSet;

    invoke-virtual {v9, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_14
    move-object v6, v7

    .end local v7           #stprr:Lcom/android/server/SmartMemoryCleanService$STProcessRelationRecord;
    .restart local v6       #stprr:Lcom/android/server/SmartMemoryCleanService$STProcessRelationRecord;
    goto/16 :goto_0

    .end local v2           #isExist:Z
    .end local v5           #sql:Ljava/lang/String;
    :catch_0
    move-exception v1

    .local v1, exce:Ljava/lang/Exception;
    :goto_1
    const-string v9, "SmartMemoryCleanService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SmartMemoryCleanService.addProcessRelation: catch exception: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v8

    goto/16 :goto_0

    .end local v1           #exce:Ljava/lang/Exception;
    .end local v6           #stprr:Lcom/android/server/SmartMemoryCleanService$STProcessRelationRecord;
    .restart local v2       #isExist:Z
    .restart local v5       #sql:Ljava/lang/String;
    .restart local v7       #stprr:Lcom/android/server/SmartMemoryCleanService$STProcessRelationRecord;
    :catch_1
    move-exception v1

    move-object v6, v7

    .end local v7           #stprr:Lcom/android/server/SmartMemoryCleanService$STProcessRelationRecord;
    .restart local v6       #stprr:Lcom/android/server/SmartMemoryCleanService$STProcessRelationRecord;
    goto :goto_1
.end method

.method private final checkAvailMemory()Z
    .locals 8

    .prologue
    const-wide/16 v0, -0x1

    .local v0, availMem:J
    const/4 v2, 0x0

    .local v2, memInfo:Landroid/app/ActivityManager$MemoryInfo;
    const/4 v3, 0x0

    .local v3, memInfoReader:Lcom/android/internal/util/MemInfoReader;
    new-instance v2, Landroid/app/ActivityManager$MemoryInfo;

    .end local v2           #memInfo:Landroid/app/ActivityManager$MemoryInfo;
    invoke-direct {v2}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .restart local v2       #memInfo:Landroid/app/ActivityManager$MemoryInfo;
    iget-object v4, p0, Lcom/android/server/SmartMemoryCleanService;->mAMSInstance:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4, v2}, Lcom/android/server/am/ActivityManagerService;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    new-instance v3, Lcom/android/internal/util/MemInfoReader;

    .end local v3           #memInfoReader:Lcom/android/internal/util/MemInfoReader;
    invoke-direct {v3}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .restart local v3       #memInfoReader:Lcom/android/internal/util/MemInfoReader;
    invoke-virtual {v3}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    invoke-virtual {v3}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v4

    invoke-virtual {v3}, Lcom/android/internal/util/MemInfoReader;->getCachedSize()J

    move-result-wide v6

    add-long/2addr v4, v6

    iget-wide v6, v2, Landroid/app/ActivityManager$MemoryInfo;->secondaryServerThreshold:J

    sub-long v0, v4, v6

    sget-boolean v4, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v4, :cond_0

    const-string v4, "SmartMemoryCleanService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SmartMemoryCleanService.checkAvailMemory.: availMem "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/server/SmartMemoryCleanService;->mSTMemLowerLimit:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/server/SmartMemoryCleanService;->mSTMemUpperLimit:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-wide v4, p0, Lcom/android/server/SmartMemoryCleanService;->mSTMemLowerLimit:J

    cmp-long v4, v0, v4

    if-ltz v4, :cond_1

    iget-wide v4, p0, Lcom/android/server/SmartMemoryCleanService;->mSTMemUpperLimit:J

    cmp-long v4, v0, v4

    if-gtz v4, :cond_1

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private final checkProcessAlwaysAllowStart(Ljava/lang/String;)Z
    .locals 4
    .parameter "processName"

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/android/server/SmartMemoryCleanService;->mAlwaysAllowStartProcess:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SmartMemoryCleanService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SmartMemoryCleanService.checkProcessAlwaysAllowStart: catch exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private final checkRelation(Ljava/util/HashSet;Ljava/lang/String;)Z
    .locals 7
    .parameter
    .parameter "procName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, relations:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v3, 0x0

    const/4 v1, 0x0

    .local v1, itRelations:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    sget-boolean v4, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v4, :cond_1

    const-string v4, "SmartMemoryCleanService"

    const-string v5, "SmartMemoryCleanService.checkRelation: empty relations "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v3

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    sget-boolean v4, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v4, :cond_1

    const-string v4, "SmartMemoryCleanService"

    const-string v5, "SmartMemoryCleanService.checkRelation: invalid proc name"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    :try_start_0
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, relationName:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/SmartMemoryCleanService;->mFilterUnTrim:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    sget-boolean v4, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v4, :cond_6

    const-string v4, "SmartMemoryCleanService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SmartMemoryCleanService.checkRelation: process "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has a relation "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in untrim"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    const/4 v3, 0x1

    goto :goto_0

    .end local v2           #relationName:Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v4, "SmartMemoryCleanService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SmartMemoryCleanService.checkRelation: catch exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private final checkTrim(Ljava/lang/String;)Z
    .locals 5
    .parameter "proc"

    .prologue
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/android/server/SmartMemoryCleanService;->mFilterUnTrim:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-boolean v2, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v2, :cond_0

    const-string v2, "SmartMemoryCleanService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SmartMemoryCleanService.checkTrim1: process "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is in untrim"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v2, "SmartMemoryCleanService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SmartMemoryCleanService.checkTrim1: catch exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/server/SmartMemoryCleanService;->mSTPkgUsage:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-boolean v2, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v2, :cond_0

    const-string v2, "SmartMemoryCleanService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SmartMemoryCleanService.checkTrim1: checkTrim "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has been used."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private creatTable(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "tableName"
    .parameter "cols"
    .parameter "colArgs"
    .parameter "constrain"

    .prologue
    const/4 v4, 0x0

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .local v3, sql:Ljava/lang/StringBuffer;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CREATE TABLE IF NOT EXISTS "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ( "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    array-length v2, p2

    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    add-int/lit8 v5, v2, -0x1

    if-ge v1, v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, p2, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p3, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, p2, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p3, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p4, :cond_3

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-boolean v5, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v5, :cond_4

    const-string v5, "SmartMemoryCleanService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SmartMemoryCleanService.creatTable: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto/16 :goto_0

    .end local v1           #i:I
    .end local v2           #len:I
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v5, "SmartMemoryCleanService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SmartMemoryCleanService.creatTable: catch exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private createAllTables()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .local v2, sql:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/SmartMemoryCleanService;->mDBWrite:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    sget-boolean v4, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v4, :cond_0

    const-string v4, "SmartMemoryCleanService"

    const-string v5, "SmartMemoryCleanService.createAllTables: invalid DB"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v3

    :cond_1
    const-string v4, "BEGIN TRANSACTION;"

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/SmartMemoryCleanService;->createTimeTables()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    new-instance v4, Ljava/lang/Exception;

    const-string v5, "create time table failed"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    const-string v4, "SmartMemoryCleanService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SmartMemoryCleanService.createAllTables: catch exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_1
    sget-boolean v4, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v4, :cond_3

    const-string v4, "SmartMemoryCleanService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SmartMemoryCleanService.createAllTables: create time table "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/SmartMemoryCleanService;->createSTUsageTables()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    new-instance v4, Ljava/lang/Exception;

    const-string v5, "create usage stat table failed"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_4
    sget-boolean v4, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v4, :cond_5

    const-string v4, "SmartMemoryCleanService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SmartMemoryCleanService.createAllTables: create usage table "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/SmartMemoryCleanService;->createProcessRelationTable()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    new-instance v4, Ljava/lang/Exception;

    const-string v5, "create process relation table failed"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_6
    sget-boolean v4, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v4, :cond_7

    const-string v4, "SmartMemoryCleanService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SmartMemoryCleanService.createAllTables: create process relation table "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/SmartMemoryCleanService;->createBlacklistTable()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_8

    new-instance v4, Ljava/lang/Exception;

    const-string v5, "create blacklist table failed"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_8
    sget-boolean v4, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v4, :cond_9

    const-string v4, "SmartMemoryCleanService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SmartMemoryCleanService.createAllTables: create blacklist table "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v4, "COMMIT TRANSACTION;"

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/SmartMemoryCleanService;->initEmptyPowerOnTimeTable()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v3, 0x1

    goto/16 :goto_0
.end method

.method private final createBlacklistTable()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .local v1, cols:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, colArgs:[Ljava/lang/String;
    const/4 v4, 0x1

    :try_start_0
    new-array v1, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "st_process_blacklist_processname"

    aput-object v5, v1, v4

    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "TEXT NOT NULL"

    aput-object v5, v0, v4

    const-string v4, "st_process_blacklist_table"

    const/4 v5, 0x0

    invoke-direct {p0, v4, v1, v0, v5}, Lcom/android/server/SmartMemoryCleanService;->creatTable(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    return-object v3

    :catch_0
    move-exception v2

    .local v2, e:Ljava/lang/Exception;
    const-string v4, "SmartMemoryCleanService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SmartMemoryCleanService.createBlacklistTable: catch exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private final createProcessRelationTable()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .local v1, cols:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, colArgs:[Ljava/lang/String;
    const/4 v4, 0x2

    :try_start_0
    new-array v1, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "st_process_relation_client"

    aput-object v5, v1, v4

    const/4 v4, 0x1

    const-string v5, "st_process_relation_server"

    aput-object v5, v1, v4

    const/4 v4, 0x2

    new-array v0, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "TEXT NOT NULL"

    aput-object v5, v0, v4

    const/4 v4, 0x1

    const-string v5, "TEXT NOT NULL"

    aput-object v5, v0, v4

    const-string v4, "st_process_relation_table"

    const/4 v5, 0x0

    invoke-direct {p0, v4, v1, v0, v5}, Lcom/android/server/SmartMemoryCleanService;->creatTable(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    return-object v3

    :catch_0
    move-exception v2

    .local v2, e:Ljava/lang/Exception;
    const-string v4, "SmartMemoryCleanService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SmartMemoryCleanService.createProcessRelationTable: catch exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private createSTUsageTables()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .local v1, cols:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, colArgs:[Ljava/lang/String;
    const/4 v4, 0x2

    :try_start_0
    new-array v1, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "pkg_name"

    aput-object v5, v1, v4

    const/4 v4, 0x1

    const-string v5, "used_latest_time"

    aput-object v5, v1, v4

    const/4 v4, 0x2

    new-array v0, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "TEXT NOT NULL"

    aput-object v5, v0, v4

    const/4 v4, 0x1

    const-string v5, "INTEGER"

    aput-object v5, v0, v4

    const-string v4, "st_usage_table"

    const/4 v5, 0x0

    invoke-direct {p0, v4, v1, v0, v5}, Lcom/android/server/SmartMemoryCleanService;->creatTable(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    return-object v3

    :catch_0
    move-exception v2

    .local v2, e:Ljava/lang/Exception;
    const-string v4, "SmartMemoryCleanService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SmartMemoryCleanService.createSTUsageTables: catch exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private createTimeTables()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .local v1, cols:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, colArgs:[Ljava/lang/String;
    const/4 v4, 0x2

    :try_start_0
    new-array v1, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "time_name"

    aput-object v5, v1, v4

    const/4 v4, 0x1

    const-string v5, "time_value"

    aput-object v5, v1, v4

    const/4 v4, 0x2

    new-array v0, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "TEXT NOT NULL PRIMARY KEY"

    aput-object v5, v0, v4

    const/4 v4, 0x1

    const-string v5, "INTEGER"

    aput-object v5, v0, v4

    const-string v4, "st_time_table"

    const/4 v5, 0x0

    invoke-direct {p0, v4, v1, v0, v5}, Lcom/android/server/SmartMemoryCleanService;->creatTable(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    return-object v3

    :catch_0
    move-exception v2

    .local v2, e:Ljava/lang/Exception;
    const-string v4, "SmartMemoryCleanService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SmartMemoryCleanService.readPowerOnTotalTime: catch exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private final deInitSMCS()V
    .locals 4

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/android/server/SmartMemoryCleanService;->mDBRead:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/SmartMemoryCleanService;->mDBRead:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/SmartMemoryCleanService;->mDBRead:Landroid/database/sqlite/SQLiteDatabase;

    :cond_0
    iget-object v1, p0, Lcom/android/server/SmartMemoryCleanService;->mDBWrite:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/SmartMemoryCleanService;->mDBWrite:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/SmartMemoryCleanService;->mDBWrite:Landroid/database/sqlite/SQLiteDatabase;

    :cond_1
    iget-object v1, p0, Lcom/android/server/SmartMemoryCleanService;->mTimer:Ljava/util/Timer;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/SmartMemoryCleanService;->mTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/SmartMemoryCleanService;->mTimer:Ljava/util/Timer;

    :cond_2
    iget-object v1, p0, Lcom/android/server/SmartMemoryCleanService;->mTrimRoundTimer:Ljava/util/Timer;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/SmartMemoryCleanService;->mTrimRoundTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/SmartMemoryCleanService;->mTrimRoundTimer:Ljava/util/Timer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SmartMemoryCleanService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SmartMemoryCleanService.deInitSMCS: catch exception "

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

.method private deleteBlacklistForResumeComponent(Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessPkgResume;)Ljava/lang/String;
    .locals 7
    .parameter "stppr"

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .local v1, processName:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, sql:Ljava/lang/String;
    if-nez p1, :cond_1

    :try_start_0
    sget-boolean v4, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v4, :cond_0

    const-string v4, "SmartMemoryCleanService"

    const-string v5, "SmartMemoryCleanService.deleteBlacklistForResumeComponent: the pkg resumed event is invalid"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    iget-object v1, p1, Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessPkgResume;->mProcessName:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/SmartMemoryCleanService;->mSTBlacklist:Ljava/util/HashSet;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/SmartMemoryCleanService;->mSTBlacklist:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    if-lez v4, :cond_2

    iget-object v4, p0, Lcom/android/server/SmartMemoryCleanService;->mSTBlacklist:Ljava/util/HashSet;

    invoke-virtual {v4, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/SmartMemoryCleanService;->mSTBlacklist:Ljava/util/HashSet;

    invoke-virtual {v4, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DELETE FROM ST_PROCESS_BLACKLIST_TABLE WHERE ST_PROCESS_BLACKLIST_PROCESSNAME = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\';"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    sget-boolean v4, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v4, :cond_3

    const-string v4, "SmartMemoryCleanService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SmartMemoryCleanService.deleteBlacklistForResumeComponent: sql "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    move-object v3, v2

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v4, "SmartMemoryCleanService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SmartMemoryCleanService.deleteBlacklistForResumeComponent: catch exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private dropTable(Ljava/lang/String;)V
    .locals 6
    .parameter "tableName"

    .prologue
    const/4 v0, 0x0

    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .local v2, sql:Ljava/lang/StringBuffer;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/SmartMemoryCleanService;->mDBWrite:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_2

    sget-boolean v3, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v3, :cond_0

    const-string v3, "SmartMemoryCleanService"

    const-string v4, "SmartMemoryCleanService.dropTable: invalid DB"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    :try_start_0
    const-string v3, "DROP TABLE IF EXISTS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-boolean v3, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v3, :cond_3

    const-string v3, "SmartMemoryCleanService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SmartMemoryCleanService.dropTable: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, e:Landroid/database/SQLException;
    const-string v3, "SmartMemoryCleanService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SmartMemoryCleanService.dropTable: catch sql exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1           #e:Landroid/database/SQLException;
    :catch_1
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    const-string v3, "SmartMemoryCleanService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SmartMemoryCleanService.dropTable: catch exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private final dumpBlacklist()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .local v0, it:Ljava/util/Iterator;
    iget-object v2, p0, Lcom/android/server/SmartMemoryCleanService;->mSTBlacklist:Ljava/util/HashSet;

    if-nez v2, :cond_1

    const-string v2, "SmartMemoryCleanService"

    const-string v3, "SmartMemoryCleanService.dumpBlacklist: null blacklist"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/server/SmartMemoryCleanService;->mSTBlacklist:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, processName:Ljava/lang/String;
    const-string v2, "SmartMemoryCleanService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SmartMemoryCleanService.dumpBlacklist: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private final dumpFilterResult()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .local v1, it:Ljava/util/Iterator;
    const/4 v3, 0x0

    .local v3, strr:Lcom/android/server/SmartMemoryCleanService$STProcessRecord;
    const-string v4, "SmartMemoryCleanService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SmartMemoryCleanService.dumpFilterResult: size "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/SmartMemoryCleanService;->mFilterTrim:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/SmartMemoryCleanService;->mFilterTrim:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/SmartMemoryCleanService$STProcessRecord;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, processName:Ljava/lang/String;
    const-string v4, "SmartMemoryCleanService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SmartMemoryCleanService.dumpFilterResult: process "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/SmartMemoryCleanService$STProcessRecord;>;"
    .end local v2           #processName:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private final dumpGotProcessRelations(Ljava/lang/String;Ljava/util/HashSet;)V
    .locals 5
    .parameter "processName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, relations:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, it:Ljava/util/Iterator;
    const/4 v1, 0x0

    .local v1, relation:Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "SmartMemoryCleanService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SmartMemoryCleanService.dumpGotProcessRelations: process "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has relations: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #relation:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1       #relation:Ljava/lang/String;
    const-string v2, "SmartMemoryCleanService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SmartMemoryCleanService.dumpGotProcessRelations: relation "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private final dumpProcessRelation()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .local v0, it:Ljava/util/Iterator;
    const/4 v1, 0x0

    .local v1, stprr:Lcom/android/server/SmartMemoryCleanService$STProcessRelationRecord;
    iget-object v2, p0, Lcom/android/server/SmartMemoryCleanService;->mSTProcessRelations:Ljava/util/HashSet;

    if-nez v2, :cond_1

    const-string v2, "SmartMemoryCleanService"

    const-string v3, "SmartMemoryCleanService.dumpProcessRelation: null relations"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    sget-boolean v2, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/SmartMemoryCleanService;->mSTProcessRelations:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #stprr:Lcom/android/server/SmartMemoryCleanService$STProcessRelationRecord;
    check-cast v1, Lcom/android/server/SmartMemoryCleanService$STProcessRelationRecord;

    .restart local v1       #stprr:Lcom/android/server/SmartMemoryCleanService$STProcessRelationRecord;
    const-string v2, "SmartMemoryCleanService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SmartMemoryCleanService.dumpProcessRelation: client "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/SmartMemoryCleanService$STProcessRelationRecord;->mClient:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " server "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/SmartMemoryCleanService$STProcessRelationRecord;->mServer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private final dumpProcessRelationTable()V
    .locals 11

    .prologue
    const/4 v0, 0x0

    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v9, 0x0

    .local v9, cursor:Landroid/database/Cursor;
    sget-boolean v1, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "SmartMemoryCleanService"

    const-string v2, "SmartMemoryCleanService.dumpProcessRelationTable:"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/SmartMemoryCleanService;->mDBRead:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v1, "st_process_relation_table"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_3

    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .local v8, client:Ljava/lang/String;
    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .local v10, server:Ljava/lang/String;
    const-string v1, "SmartMemoryCleanService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SmartMemoryCleanService.dumpProcessRelationTable: client "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " server "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .end local v8           #client:Ljava/lang/String;
    .end local v10           #server:Ljava/lang/String;
    :catchall_0
    move-exception v1

    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1

    :cond_3
    if-eqz v9, :cond_4

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_4
    const-string v1, "SmartMemoryCleanService"

    const-string v2, "SmartMemoryCleanService.dumpProcessRelationTable: end"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private final dumpStringHashSet(Ljava/util/HashSet;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter "sLog"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, strs:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, str:Ljava/lang/String;
    const-string v2, "SmartMemoryCleanService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private final dumpUsageData()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .local v1, it:Ljava/util/Iterator;
    const/4 v2, 0x0

    .local v2, stpur:Lcom/android/server/SmartMemoryCleanService$STPkgUsageRecord;
    sget-boolean v3, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v3, "SmartMemoryCleanService"

    const-string v4, "SmartMemoryCleanService.dumpUsageData:"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/SmartMemoryCleanService;->mSTPkgUsage:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/SmartMemoryCleanService$STPkgUsageRecord;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #stpur:Lcom/android/server/SmartMemoryCleanService$STPkgUsageRecord;
    check-cast v2, Lcom/android/server/SmartMemoryCleanService$STPkgUsageRecord;

    .restart local v2       #stpur:Lcom/android/server/SmartMemoryCleanService$STPkgUsageRecord;
    const-string v3, "SmartMemoryCleanService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SmartMemoryCleanService.dumpUsageData: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/server/SmartMemoryCleanService$STPkgUsageRecord;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/SmartMemoryCleanService$STPkgUsageRecord;>;"
    :cond_1
    const-string v3, "SmartMemoryCleanService"

    const-string v4, "SmartMemoryCleanService.dumpUsageData: end"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private final dumpUsageTable()V
    .locals 11

    .prologue
    const/4 v0, 0x0

    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .local v8, cursor:Landroid/database/Cursor;
    sget-boolean v1, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "SmartMemoryCleanService"

    const-string v2, "SmartMemoryCleanService.dumpUsageTable:"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/SmartMemoryCleanService;->mDBRead:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v1, "st_usage_table"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_3

    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .local v10, processName:Ljava/lang/String;
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .local v9, index:I
    const-string v1, "SmartMemoryCleanService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SmartMemoryCleanService.dumpUsageTable: processName "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .end local v9           #index:I
    .end local v10           #processName:Ljava/lang/String;
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1

    :cond_3
    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    const-string v1, "SmartMemoryCleanService"

    const-string v2, "SmartMemoryCleanService.dumpUsageTable: end"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private dumptSTProcessRecord(Lcom/android/server/SmartMemoryCleanService$STProcessRecord;)V
    .locals 5
    .parameter "stpr"

    .prologue
    const/4 v1, 0x0

    .local v1, pkgList:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    const-string v2, "SmartMemoryCleanService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SmartMemoryCleanService.dumptSTProcessRecord: process name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/SmartMemoryCleanService$STProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "SmartMemoryCleanService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SmartMemoryCleanService.dumptSTProcessRecord: uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/android/server/SmartMemoryCleanService$STProcessRecord;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "SmartMemoryCleanService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SmartMemoryCleanService.dumptSTProcessRecord: pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/android/server/SmartMemoryCleanService$STProcessRecord;->pid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "SmartMemoryCleanService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SmartMemoryCleanService.dumptSTProcessRecord: curAdj "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/android/server/SmartMemoryCleanService$STProcessRecord;->curAdj:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p1, Lcom/android/server/SmartMemoryCleanService$STProcessRecord;->pkgList:Ljava/util/HashSet;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    const-string v2, "SmartMemoryCleanService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SmartMemoryCleanService.dumptSTProcessRecord: process  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/SmartMemoryCleanService$STProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has no pkglist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v3, "SmartMemoryCleanService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SmartMemoryCleanService.dumptSTProcessRecord: process "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p1, Lcom/android/server/SmartMemoryCleanService$STProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " has pkg "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private final filerTrimProcess()V
    .locals 18

    .prologue
    const-wide/16 v10, -0x1

    .local v10, timeStart:J
    const-wide/16 v2, -0x1

    .local v2, filterBlacklistCost:J
    const-wide/16 v4, -0x1

    .local v4, firstFilterCostTime:J
    const-wide/16 v6, -0x1

    .local v6, relationFilterCost:J
    const-wide/16 v12, -0x1

    .local v12, updateblacklistcost:J
    const-wide/16 v8, -0x1

    .local v8, timeCost:J
    :try_start_0
    sget-boolean v14, Lcom/android/server/SmartMemoryCleanService;->mDebugPerformance:Z

    if-eqz v14, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/SmartMemoryCleanService;->mFilterTrim:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->size()I

    move-result v14

    if-lez v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/SmartMemoryCleanService;->mFilterTrim:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->clear()V

    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/SmartMemoryCleanService;->mFilterUnTrim:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->size()I

    move-result v14

    if-lez v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/SmartMemoryCleanService;->mFilterUnTrim:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->clear()V

    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/SmartMemoryCleanService;->mRunningList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-nez v14, :cond_4

    sget-boolean v14, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v14, :cond_3

    const-string v14, "SmartMemoryCleanService"

    const-string v15, "SmartMemoryCleanService.filerTrimProcess: not running process to filter"

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void

    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/server/SmartMemoryCleanService;->filterTrimProcessBlacklist()V

    sget-boolean v14, Lcom/android/server/SmartMemoryCleanService;->mDebugPerformance:Z

    if-eqz v14, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long v2, v14, v10

    const-string v14, "SmartMemoryCleanService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "SmartMemoryCleanService.filerTrimProcess: filter blacklist cost "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ms end."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/SmartMemoryCleanService;->mRunningList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/android/server/SmartMemoryCleanService;->filterTrimProcessFirst()V

    :cond_6
    sget-boolean v14, Lcom/android/server/SmartMemoryCleanService;->mDebugPerformance:Z

    if-eqz v14, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long v4, v14, v10

    const-string v14, "SmartMemoryCleanService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "SmartMemoryCleanService.filerTrimProcess: first filter cost "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sub-long v16, v4, v2

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ms end."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/server/SmartMemoryCleanService;->filterTrimProcessRelationCheck()V

    sget-boolean v14, Lcom/android/server/SmartMemoryCleanService;->mDebugPerformance:Z

    if-eqz v14, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long v6, v14, v10

    const-string v14, "SmartMemoryCleanService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "SmartMemoryCleanService.filerTrimProcess: relation filter cost "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sub-long v16, v6, v4

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ms end."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/android/server/SmartMemoryCleanService;->filterTrimProcessUpdateBlacklist()V

    sget-boolean v14, Lcom/android/server/SmartMemoryCleanService;->mDebugPerformance:Z

    if-eqz v14, :cond_9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long v12, v14, v10

    const-string v14, "SmartMemoryCleanService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "SmartMemoryCleanService.filerTrimProcess: update blacklist cost "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sub-long v16, v12, v6

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ms end."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    sget-boolean v14, Lcom/android/server/SmartMemoryCleanService;->mDebugPerformance:Z

    if-eqz v14, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long v8, v14, v10

    const-string v14, "SmartMemoryCleanService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "SmartMemoryCleanService.filerTrimProcess: total cost "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ms end."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    const-string v14, "SmartMemoryCleanService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "SmartMemoryCleanService.filerTrimProcess: catch exception: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private final filterTrimProcessBlacklist()V
    .locals 17

    .prologue
    const/4 v3, 0x0

    .local v3, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/SmartMemoryCleanService$STProcessRecord;>;"
    const/4 v8, 0x0

    .local v8, proc:Lcom/android/server/SmartMemoryCleanService$STProcessRecord;
    const/4 v9, 0x0

    .local v9, procName:Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, pkgList:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, itPkg:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .local v7, pkgUnTrim:Z
    const/4 v10, 0x0

    .local v10, sPkg:Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, sqls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v11, 0x0

    .local v11, sql:Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/SmartMemoryCleanService;->mSTBlacklist:Ljava/util/HashSet;

    if-nez v14, :cond_1

    sget-boolean v14, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v14, :cond_0

    const-string v14, "SmartMemoryCleanService"

    const-string v15, "SmartMemoryCleanService.filterTrimProcessBlacklist: no element in the blacklist."

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/SmartMemoryCleanService;->mSTBlacklist:Ljava/util/HashSet;

    :goto_0
    return-void

    :cond_1
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .end local v12           #sqls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v13, sqls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/SmartMemoryCleanService;->mRunningList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    move-object v0, v14

    check-cast v0, Lcom/android/server/SmartMemoryCleanService$STProcessRecord;

    move-object v8, v0

    if-nez v8, :cond_4

    sget-boolean v14, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v14, :cond_3

    const-string v14, "SmartMemoryCleanService"

    const-string v15, "SmartMemoryCleanService.filterTrimProcessBlacklist: invalid process."

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    move-object v12, v13

    .end local v13           #sqls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v2, e:Ljava/lang/Exception;
    .restart local v12       #sqls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_2
    const-string v14, "SmartMemoryCleanService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "SmartMemoryCleanService.filterTrimProcessFirst: catch exception: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v2           #e:Ljava/lang/Exception;
    .end local v12           #sqls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v13       #sqls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    :try_start_2
    iget-object v9, v8, Lcom/android/server/SmartMemoryCleanService$STProcessRecord;->processName:Ljava/lang/String;

    if-eqz v9, :cond_5

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_7

    :cond_5
    sget-boolean v14, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v14, :cond_6

    const-string v14, "SmartMemoryCleanService"

    const-string v15, "SmartMemoryCleanService.filterTrimProcessBlacklist: invalid process name."

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/SmartMemoryCleanService;->mSTBlacklist:Ljava/util/HashSet;

    invoke-virtual {v14, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_8

    sget-boolean v14, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v14, :cond_2

    const-string v14, "SmartMemoryCleanService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "SmartMemoryCleanService.filterTrimProcessBlacklist:  process "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " is not in the blacklist."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_8
    iget v14, v8, Lcom/android/server/SmartMemoryCleanService$STProcessRecord;->curAdj:I

    sget v15, Lcom/android/server/SmartMemoryCleanService;->SMART_TRIM_ADJ_LIMIT:I

    if-gt v14, v15, :cond_b

    sget-boolean v14, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v14, :cond_9

    const-string v14, "SmartMemoryCleanService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "SmartMemoryCleanService.filterTrimProcessBlacklist:  process "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " has too small curAdj "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v8, Lcom/android/server/SmartMemoryCleanService$STProcessRecord;->curAdj:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " though it is in the blacklist."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/SmartMemoryCleanService;->mFilterUnTrim:Ljava/util/HashMap;

    invoke-virtual {v14, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/SmartMemoryCleanService;->mFilterUnTrim:Ljava/util/HashMap;

    invoke-virtual {v14, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/SmartMemoryCleanService;->removeProcessInBlacklist(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_2

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_2

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_b
    iget-object v6, v8, Lcom/android/server/SmartMemoryCleanService$STProcessRecord;->pkgList:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v7, 0x0

    :cond_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    move-object v0, v14

    check-cast v0, Ljava/lang/String;

    move-object v10, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/server/SmartMemoryCleanService;->isSTProcessUsed(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_c

    sget-boolean v14, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v14, :cond_d

    const-string v14, "SmartMemoryCleanService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "SmartMemoryCleanService.filterTrimProcessBlacklist:  process  "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " has been used and should not be in the blacklist."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/SmartMemoryCleanService;->mFilterUnTrim:Ljava/util/HashMap;

    invoke-virtual {v14, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_e

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/SmartMemoryCleanService;->mFilterUnTrim:Ljava/util/HashMap;

    invoke-virtual {v14, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/SmartMemoryCleanService;->removeProcessInBlacklist(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_f

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_f

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    const/4 v7, 0x1

    :cond_10
    if-eqz v7, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_1

    :cond_11
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/SmartMemoryCleanService;->mFilterTrim:Ljava/util/HashMap;

    invoke-virtual {v14, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_1

    :cond_12
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_14

    const/4 v5, 0x0

    .local v5, itSql:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/SmartMemoryCleanService;->mDBWrite:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_14

    const-string v11, "BEGIN TRANSACTION"

    invoke-virtual {v1, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_13

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    move-object v0, v14

    check-cast v0, Ljava/lang/String;

    move-object v11, v0

    invoke-virtual {v1, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_3

    :cond_13
    const-string v11, "COMMIT TRANSACTION"

    invoke-virtual {v1, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v5           #itSql:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_14
    move-object v12, v13

    .end local v13           #sqls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v12       #sqls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto/16 :goto_0

    :catch_1
    move-exception v2

    goto/16 :goto_2
.end method

.method private final filterTrimProcessFirst()V
    .locals 16

    .prologue
    const/4 v11, 0x0

    .local v11, visibleWidgetPkgs:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, notificationPkgs:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/SmartMemoryCleanService$STProcessRecord;>;"
    const/4 v8, 0x0

    .local v8, proc:Lcom/android/server/SmartMemoryCleanService$STProcessRecord;
    const/4 v9, 0x0

    .local v9, procName:Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, pkgList:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, itPkg:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .local v10, sPkg:Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, pkgUnTrim:Z
    :try_start_0
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .end local v11           #visibleWidgetPkgs:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .local v12, visibleWidgetPkgs:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/SmartMemoryCleanService;->mAppWidget:Lcom/android/server/AppWidgetService;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/SmartMemoryCleanService;->mAppWidget:Lcom/android/server/AppWidgetService;

    invoke-virtual {v13, v12}, Lcom/android/server/AppWidgetService;->getVisibleWidgets(Ljava/util/HashSet;)Z

    sget-boolean v13, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v13, :cond_0

    const-string v13, "visible widgets"

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/android/server/SmartMemoryCleanService;->dumpStringHashSet(Ljava/util/HashSet;Ljava/lang/String;)V

    :cond_0
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .end local v4           #notificationPkgs:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .local v5, notificationPkgs:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/SmartMemoryCleanService;->mNotification:Lcom/android/server/NotificationManagerService;

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/SmartMemoryCleanService;->mNotification:Lcom/android/server/NotificationManagerService;

    invoke-virtual {v13, v5}, Lcom/android/server/NotificationManagerService;->getNotificationPkgs(Ljava/util/HashSet;)V

    sget-boolean v13, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v13, :cond_1

    const-string v13, "notification pkgs"

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v13}, Lcom/android/server/SmartMemoryCleanService;->dumpStringHashSet(Ljava/util/HashSet;Ljava/lang/String;)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/SmartMemoryCleanService;->mRunningList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Lcom/android/server/SmartMemoryCleanService$STProcessRecord;

    move-object v8, v0

    iget-object v9, v8, Lcom/android/server/SmartMemoryCleanService$STProcessRecord;->processName:Ljava/lang/String;

    iget v13, v8, Lcom/android/server/SmartMemoryCleanService$STProcessRecord;->curAdj:I

    sget v14, Lcom/android/server/SmartMemoryCleanService;->SMART_TRIM_ADJ_LIMIT:I

    if-gt v13, v14, :cond_4

    sget-boolean v13, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v13, :cond_3

    const-string v13, "SmartMemoryCleanService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SmartMemoryCleanService.filterTrimProcessFirst:  process "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " has too small curAdj "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v8, Lcom/android/server/SmartMemoryCleanService$STProcessRecord;->curAdj:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/SmartMemoryCleanService;->mFilterUnTrim:Ljava/util/HashMap;

    invoke-virtual {v13, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/SmartMemoryCleanService;->mFilterUnTrim:Ljava/util/HashMap;

    invoke-virtual {v13, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v4, v5

    .end local v5           #notificationPkgs:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v4       #notificationPkgs:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object v11, v12

    .end local v12           #visibleWidgetPkgs:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .local v1, e:Ljava/lang/Exception;
    .restart local v11       #visibleWidgetPkgs:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :goto_1
    const-string v13, "SmartMemoryCleanService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SmartMemoryCleanService.filterTrimProcessFirst: catch exception: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1           #e:Ljava/lang/Exception;
    .end local v11           #visibleWidgetPkgs:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :goto_2
    return-void

    .end local v4           #notificationPkgs:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v5       #notificationPkgs:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v12       #visibleWidgetPkgs:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_4
    :try_start_3
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/SmartMemoryCleanService;->checkProcessAlwaysAllowStart(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    sget-boolean v13, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v13, :cond_2

    const-string v13, "SmartMemoryCleanService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SmartMemoryCleanService.filterTrimProcessFirst:  process "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " is key process."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    iget-object v6, v8, Lcom/android/server/SmartMemoryCleanService$STProcessRecord;->pkgList:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v7, 0x0

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Ljava/lang/String;

    move-object v10, v0

    invoke-virtual {v12, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    sget-boolean v13, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v13, :cond_7

    const-string v13, "SmartMemoryCleanService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SmartMemoryCleanService.filterTrimProcessFirst:  package "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " is a visible widget."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/SmartMemoryCleanService;->mFilterUnTrim:Ljava/util/HashMap;

    invoke-virtual {v13, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/SmartMemoryCleanService;->mFilterUnTrim:Ljava/util/HashMap;

    invoke-virtual {v13, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    const/4 v7, 0x1

    :cond_9
    :goto_3
    if-nez v7, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/SmartMemoryCleanService;->mFilterTrim:Ljava/util/HashMap;

    invoke-virtual {v13, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v5, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    sget-boolean v13, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v13, :cond_b

    const-string v13, "SmartMemoryCleanService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SmartMemoryCleanService.filterTrimProcessFirst:  package "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " has notification."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/SmartMemoryCleanService;->mFilterUnTrim:Ljava/util/HashMap;

    invoke-virtual {v13, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_c

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/SmartMemoryCleanService;->mFilterUnTrim:Ljava/util/HashMap;

    invoke-virtual {v13, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    const/4 v7, 0x1

    goto :goto_3

    :cond_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/server/SmartMemoryCleanService;->isSTProcessUsed(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    sget-boolean v13, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v13, :cond_e

    const-string v13, "SmartMemoryCleanService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SmartMemoryCleanService.filterTrimProcessFirst:  process  "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " has been used."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/SmartMemoryCleanService;->mFilterUnTrim:Ljava/util/HashMap;

    invoke-virtual {v13, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_f

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/SmartMemoryCleanService;->mFilterUnTrim:Ljava/util/HashMap;

    invoke-virtual {v13, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_f
    const/4 v7, 0x1

    goto/16 :goto_3

    :cond_10
    move-object v4, v5

    .end local v5           #notificationPkgs:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v4       #notificationPkgs:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    goto/16 :goto_2

    .end local v12           #visibleWidgetPkgs:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v11       #visibleWidgetPkgs:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :catch_1
    move-exception v1

    goto/16 :goto_1

    .end local v11           #visibleWidgetPkgs:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v12       #visibleWidgetPkgs:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :catch_2
    move-exception v1

    move-object v11, v12

    .end local v12           #visibleWidgetPkgs:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v11       #visibleWidgetPkgs:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    goto/16 :goto_1
.end method

.method private final filterTrimProcessRelationCheck()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .local v3, it:Ljava/util/Iterator;
    const/4 v4, 0x0

    .local v4, procName:Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, relations:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :try_start_0
    iget-object v6, p0, Lcom/android/server/SmartMemoryCleanService;->mFilterTrim:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/SmartMemoryCleanService$STProcessRecord;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    invoke-direct {p0, v4}, Lcom/android/server/SmartMemoryCleanService;->getProcessRelations(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v6

    if-lez v6, :cond_0

    sget-boolean v6, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v6, :cond_1

    invoke-direct {p0, v4, v5}, Lcom/android/server/SmartMemoryCleanService;->dumpGotProcessRelations(Ljava/lang/String;Ljava/util/HashSet;)V

    :cond_1
    invoke-direct {p0, v5, v4}, Lcom/android/server/SmartMemoryCleanService;->checkRelation(Ljava/util/HashSet;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/SmartMemoryCleanService$STProcessRecord;>;"
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    const-string v6, "SmartMemoryCleanService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SmartMemoryCleanService.filterTrimProcessRelationCheck: catch exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1           #e:Ljava/lang/Exception;
    :cond_2
    return-void
.end method

.method private final filterTrimProcessUpdateBlacklist()V
    .locals 13

    .prologue
    const/4 v6, 0x0

    .local v6, procName:Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, sql:Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, sqls:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, it:Ljava/util/Iterator;
    :try_start_0
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .end local v8           #sqls:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .local v9, sqls:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :try_start_1
    iget-object v10, p0, Lcom/android/server/SmartMemoryCleanService;->mFilterTrim:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .local v3, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/SmartMemoryCleanService$STProcessRecord;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    iget-object v10, p0, Lcom/android/server/SmartMemoryCleanService;->mSTBlacklist:Ljava/util/HashSet;

    invoke-virtual {v10, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, p0, Lcom/android/server/SmartMemoryCleanService;->mSTBlacklist:Ljava/util/HashSet;

    invoke-virtual {v10, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "INSERT INTO st_process_blacklist_table VALUES(\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\');"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .end local v3           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/SmartMemoryCleanService$STProcessRecord;>;"
    :catch_0
    move-exception v2

    move-object v8, v9

    .end local v9           #sqls:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .local v2, e:Ljava/lang/Exception;
    .restart local v8       #sqls:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :goto_1
    const-string v10, "SmartMemoryCleanService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SmartMemoryCleanService.filterTrimProcessUpdateBlacklist: catch exception: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2           #e:Ljava/lang/Exception;
    :goto_2
    return-void

    .end local v8           #sqls:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v9       #sqls:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_1
    :try_start_2
    sget-boolean v10, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v10, :cond_2

    const-string v10, "SmartMemoryCleanService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SmartMemoryCleanService.filterTrimProcessUpdateBlacklist: sqls size "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Ljava/util/HashSet;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v9}, Ljava/util/HashSet;->size()I

    move-result v10

    if-lez v10, :cond_4

    const/4 v1, 0x0

    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v5, 0x0

    .local v5, itSql:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/SmartMemoryCleanService;->mDBWrite:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_4

    const-string v7, "BEGIN TRANSACTION"

    invoke-virtual {v1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    const-string v7, "COMMIT TRANSACTION"

    invoke-virtual {v1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v5           #itSql:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_4
    move-object v8, v9

    .end local v9           #sqls:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v8       #sqls:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    goto :goto_2

    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method private final getCurPowerOnTime()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/SmartMemoryCleanService;->mPowerOnTotalTime:I

    return v0
.end method

.method private static getDatabaseName()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v0, 0x0

    .local v0, dataDir:Ljava/io/File;
    const/4 v5, 0x0

    .local v5, systemDir:Ljava/io/File;
    const/4 v1, 0x0

    .local v1, databaseFile:Ljava/io/File;
    const/4 v3, 0x0

    .local v3, dbFile:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v6, Ljava/io/File;

    const-string v7, "system/stusagestat"

    invoke-direct {v6, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v5           #systemDir:Ljava/io/File;
    .local v6, systemDir:Ljava/io/File;
    :try_start_1
    new-instance v2, Ljava/io/File;

    const-string v7, "stusagestat.db"

    invoke-direct {v2, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v1           #databaseFile:Ljava/io/File;
    .local v2, databaseFile:Ljava/io/File;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    sget-boolean v7, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v7, :cond_0

    const-string v7, "SmartMemoryCleanService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SmartMemoryCleanService.getDatabaseName: databaseFile "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    move-object v1, v2

    .end local v2           #databaseFile:Ljava/io/File;
    .restart local v1       #databaseFile:Ljava/io/File;
    move-object v5, v6

    .end local v6           #systemDir:Ljava/io/File;
    .restart local v5       #systemDir:Ljava/io/File;
    move-object v7, v3

    :goto_0
    return-object v7

    :catch_0
    move-exception v4

    .local v4, e:Ljava/lang/Exception;
    :goto_1
    const-string v7, "SmartMemoryCleanService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SmartMemoryCleanService.getDatabaseName: catch exception "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    goto :goto_0

    .end local v4           #e:Ljava/lang/Exception;
    .end local v5           #systemDir:Ljava/io/File;
    .restart local v6       #systemDir:Ljava/io/File;
    :catch_1
    move-exception v4

    move-object v5, v6

    .end local v6           #systemDir:Ljava/io/File;
    .restart local v5       #systemDir:Ljava/io/File;
    goto :goto_1

    .end local v1           #databaseFile:Ljava/io/File;
    .end local v5           #systemDir:Ljava/io/File;
    .restart local v2       #databaseFile:Ljava/io/File;
    .restart local v6       #systemDir:Ljava/io/File;
    :catch_2
    move-exception v4

    move-object v1, v2

    .end local v2           #databaseFile:Ljava/io/File;
    .restart local v1       #databaseFile:Ljava/io/File;
    move-object v5, v6

    .end local v6           #systemDir:Ljava/io/File;
    .restart local v5       #systemDir:Ljava/io/File;
    goto :goto_1
.end method

.method private final getFilterTrimProcess()Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v4, 0x0

    .local v4, it:Ljava/util/Iterator;
    const/4 v6, 0x0

    .local v6, strr:Lcom/android/server/SmartMemoryCleanService$STProcessRecord;
    const-wide/16 v7, 0x0

    .local v7, timeStart:J
    sget-boolean v9, Lcom/android/server/SmartMemoryCleanService;->mDebugPerformance:Z

    if-eqz v9, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    :cond_0
    :try_start_0
    iget-object v9, p0, Lcom/android/server/SmartMemoryCleanService;->mFilterTrim:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .local v3, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/SmartMemoryCleanService$STProcessRecord;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .local v5, processName:Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    sget-boolean v9, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v9, :cond_1

    const-string v9, "SmartMemoryCleanService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SmartMemoryCleanService.getFilterTrimProcess: get process "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/SmartMemoryCleanService$STProcessRecord;>;"
    .end local v5           #processName:Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v5

    :catch_0
    move-exception v2

    .local v2, e:Ljava/lang/Exception;
    const-string v9, "SmartMemoryCleanService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SmartMemoryCleanService.getFilterTrimProcess: catch exception: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2           #e:Ljava/lang/Exception;
    :cond_2
    sget-boolean v9, Lcom/android/server/SmartMemoryCleanService;->mDebugPerformance:Z

    if-eqz v9, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long v0, v9, v7

    .local v0, costTime:J
    const-string v9, "SmartMemoryCleanService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SmartMemoryCleanService.getFilterTrimProcess: cost "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ms end."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #costTime:J
    :cond_3
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private final getProcessRelations(Ljava/lang/String;)Ljava/util/HashSet;
    .locals 4
    .parameter "processName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/android/server/SmartMemoryCleanService;->mSTProcessRelations:Ljava/util/HashSet;

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/SmartMemoryCleanService;->getProcessRelationsInDB(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/SmartMemoryCleanService;->getProcessRelationsInSet(Ljava/lang/String;)Ljava/util/HashSet;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SmartMemoryCleanService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SmartMemoryCleanService.getProcessRelations: catch exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private final getProcessRelationsInDB(Ljava/lang/String;)Ljava/util/HashSet;
    .locals 14
    .parameter "processName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    const/4 v11, 0x0

    .local v11, relations:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .local v8, cursor:Landroid/database/Cursor;
    const/4 v3, 0x0

    .local v3, selection:Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, selectionArgs:[Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, proc:Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    sget-boolean v1, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v1, :cond_1

    const-string v1, "SmartMemoryCleanService"

    const-string v2, "SmartMemoryCleanService.getProcessRelations: invalid process name."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v12, v13

    :goto_0
    return-object v12

    :cond_2
    iget-object v0, p0, Lcom/android/server/SmartMemoryCleanService;->mDBRead:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_4

    sget-boolean v1, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v1, :cond_3

    const-string v1, "SmartMemoryCleanService"

    const-string v2, "SmartMemoryCleanService.getProcessRelations: invalid db."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object v12, v13

    goto :goto_0

    :cond_4
    :try_start_0
    const-string v3, "st_process_relation_server=?"

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v4, v1

    const-string v1, "st_process_relation_table"

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_8

    :cond_5
    sget-boolean v1, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v1, :cond_6

    const-string v1, "SmartMemoryCleanService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SmartMemoryCleanService.getProcessRelations: no relations for "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_6
    if-eqz v8, :cond_7

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_7
    move-object v12, v13

    goto :goto_0

    :cond_8
    :try_start_1
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v11           #relations:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .local v12, relations:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :goto_1
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v9

    move-object v11, v12

    .end local v12           #relations:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .local v9, e:Ljava/lang/Exception;
    .restart local v11       #relations:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :goto_2
    :try_start_3
    const-string v1, "SmartMemoryCleanService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SmartMemoryCleanService.getProcessRelations: catch exception: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v8, :cond_9

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_9
    move-object v12, v13

    goto/16 :goto_0

    .end local v9           #e:Ljava/lang/Exception;
    .end local v11           #relations:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v12       #relations:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_a
    if-eqz v8, :cond_b

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_b
    move-object v11, v12

    .end local v12           #relations:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v11       #relations:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    goto/16 :goto_0

    :catchall_0
    move-exception v1

    :goto_3
    if-eqz v8, :cond_c

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_c
    throw v1

    .end local v11           #relations:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v12       #relations:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_1
    move-exception v1

    move-object v11, v12

    .end local v12           #relations:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v11       #relations:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    goto :goto_3

    :catch_1
    move-exception v9

    goto :goto_2
.end method

.method private final getProcessRelationsInSet(Ljava/lang/String;)Ljava/util/HashSet;
    .locals 11
    .parameter "processName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    .local v3, relations:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, it:Ljava/util/Iterator;
    const/4 v6, 0x0

    .local v6, stprr:Lcom/android/server/SmartMemoryCleanService$STProcessRelationRecord;
    const/4 v5, 0x0

    .local v5, server:Ljava/lang/String;
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_3

    :cond_0
    sget-boolean v7, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v7, :cond_1

    const-string v7, "SmartMemoryCleanService"

    const-string v9, "SmartMemoryCleanService.getProcessRelationsInSet: invalid process name."

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v4, v8

    .end local v3           #relations:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_2
    :goto_0
    return-object v4

    .restart local v3       #relations:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_3
    iget-object v7, p0, Lcom/android/server/SmartMemoryCleanService;->mSTProcessRelations:Ljava/util/HashSet;

    if-nez v7, :cond_5

    sget-boolean v7, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v7, :cond_4

    const-string v7, "SmartMemoryCleanService"

    const-string v9, "SmartMemoryCleanService.getProcessRelationsInSet: invalid mSTProcessRelations."

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-object v4, v8

    goto :goto_0

    :cond_5
    iget-object v7, p0, Lcom/android/server/SmartMemoryCleanService;->mSTProcessRelations:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .end local v3           #relations:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .local v4, relations:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_6
    :goto_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/android/server/SmartMemoryCleanService$STProcessRelationRecord;

    move-object v6, v0

    iget-object v5, v6, Lcom/android/server/SmartMemoryCleanService$STProcessRelationRecord;->mServer:Ljava/lang/String;

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_6

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, v6, Lcom/android/server/SmartMemoryCleanService$STProcessRelationRecord;->mClient:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    move-object v3, v4

    .end local v4           #relations:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .local v1, e:Ljava/lang/Exception;
    .restart local v3       #relations:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :goto_2
    const-string v7, "SmartMemoryCleanService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SmartMemoryCleanService.getProcessRelationsInSet: catch exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v8

    goto :goto_0

    .end local v1           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method private getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 5

    .prologue
    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/SmartMemoryCleanService;->mDBHelper:Lcom/android/server/SmartMemoryCleanService$DatabaseHelper;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/SmartMemoryCleanService;->mContext:Landroid/content/Context;

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v2, :cond_0

    const-string v2, "SmartMemoryCleanService"

    const-string v3, "SmartMemoryCleanService.getReadableDatabase: invalid context."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v2, Lcom/android/server/SmartMemoryCleanService$DatabaseHelper;

    iget-object v3, p0, Lcom/android/server/SmartMemoryCleanService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/SmartMemoryCleanService$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/SmartMemoryCleanService;->mDBHelper:Lcom/android/server/SmartMemoryCleanService$DatabaseHelper;

    :cond_2
    iget-object v2, p0, Lcom/android/server/SmartMemoryCleanService;->mDBHelper:Lcom/android/server/SmartMemoryCleanService$DatabaseHelper;

    invoke-virtual {v2}, Lcom/android/server/SmartMemoryCleanService$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    goto :goto_0

    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    const-string v2, "SmartMemoryCleanService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SmartMemoryCleanService.getReadableDatabase: catch exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private final getRunningList()V
    .locals 4

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/android/server/SmartMemoryCleanService;->mRunningList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/SmartMemoryCleanService;->mRunningList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_0
    iget-object v1, p0, Lcom/android/server/SmartMemoryCleanService;->mAMSInstance:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, Lcom/android/server/SmartMemoryCleanService;->mRunningList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->getRunningAppProcessRecord(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SmartMemoryCleanService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SmartMemoryCleanService.getRunningList: catch exception: "

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

.method private getWriteableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 5

    .prologue
    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/SmartMemoryCleanService;->mDBHelper:Lcom/android/server/SmartMemoryCleanService$DatabaseHelper;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/SmartMemoryCleanService;->mContext:Landroid/content/Context;

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v2, :cond_0

    const-string v2, "SmartMemoryCleanService"

    const-string v3, "SmartMemoryCleanService.getWriteableDatabase: invalid context."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v2, Lcom/android/server/SmartMemoryCleanService$DatabaseHelper;

    iget-object v3, p0, Lcom/android/server/SmartMemoryCleanService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/SmartMemoryCleanService$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/SmartMemoryCleanService;->mDBHelper:Lcom/android/server/SmartMemoryCleanService$DatabaseHelper;

    :cond_2
    iget-object v2, p0, Lcom/android/server/SmartMemoryCleanService;->mDBHelper:Lcom/android/server/SmartMemoryCleanService$DatabaseHelper;

    invoke-virtual {v2}, Lcom/android/server/SmartMemoryCleanService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    goto :goto_0

    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    const-string v2, "SmartMemoryCleanService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SmartMemoryCleanService.getWriteableDatabase: catch exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private final handleSMCSTimerOut()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    :try_start_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .local v1, isFirstTrim:Ljava/lang/Boolean;
    invoke-direct {p0}, Lcom/android/server/SmartMemoryCleanService;->isSMCSInited()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/SmartMemoryCleanService;->initSMCS()V

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/SmartMemoryCleanService;->setSMCSInited(Z)V

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :cond_0
    invoke-direct {p0}, Lcom/android/server/SmartMemoryCleanService;->getCurPowerOnTime()I

    move-result v2

    if-gez v2, :cond_3

    invoke-direct {p0}, Lcom/android/server/SmartMemoryCleanService;->incPowerOnTotalTime()V

    invoke-direct {p0}, Lcom/android/server/SmartMemoryCleanService;->smartTrimHandleSTPEvents()V

    :goto_0
    sget-boolean v2, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v2, :cond_1

    const-string v2, "SmartMemoryCleanService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SmartMemoryCleanService.handleSMCSTimerOut: isFirstTrim "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0}, Lcom/android/server/SmartMemoryCleanService;->startSmartTrimProcess()V

    .end local v1           #isFirstTrim:Ljava/lang/Boolean;
    :cond_2
    :goto_1
    return-void

    .restart local v1       #isFirstTrim:Ljava/lang/Boolean;
    :cond_3
    invoke-direct {p0}, Lcom/android/server/SmartMemoryCleanService;->smartTrimHandleSTPEvents()V

    invoke-direct {p0}, Lcom/android/server/SmartMemoryCleanService;->incPowerOnTotalTime()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v1           #isFirstTrim:Ljava/lang/Boolean;
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v2, "SmartMemoryCleanService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SmartMemoryCleanService.handleSMCSTimerOut: catch exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #isFirstTrim:Ljava/lang/Boolean;
    :cond_4
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/SmartMemoryCleanService;->isTrimApkStarted()Z

    move-result v2

    if-eqz v2, :cond_5

    sget-boolean v2, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v2, :cond_2

    const-string v2, "SmartMemoryCleanService"

    const-string v3, "SmartMemoryCleanService.handleSMCSTimerOut: trim round is running."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/android/server/SmartMemoryCleanService;->checkAvailMemory()Z

    move-result v2

    if-nez v2, :cond_6

    sget-boolean v2, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v2, :cond_2

    const-string v2, "SmartMemoryCleanService"

    const-string v3, "SmartMemoryCleanService.handleSMCSTimerOut: trim round need not be started."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    invoke-direct {p0}, Lcom/android/server/SmartMemoryCleanService;->startSmartTrimProcess()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private final incPowerOnTotalTime()V
    .locals 8

    .prologue
    const-wide/16 v3, -0x1

    .local v3, timeStart:J
    const-wide/16 v0, -0x1

    .local v0, costTime:J
    :try_start_0
    sget-boolean v5, Lcom/android/server/SmartMemoryCleanService;->mDebugPerformance:Z

    if-eqz v5, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    :cond_0
    iget v5, p0, Lcom/android/server/SmartMemoryCleanService;->mPowerOnTotalTime:I

    if-gez v5, :cond_4

    invoke-direct {p0}, Lcom/android/server/SmartMemoryCleanService;->readPowerOnTotalTime()I

    move-result v5

    iput v5, p0, Lcom/android/server/SmartMemoryCleanService;->mPowerOnTotalTime:I

    :goto_0
    sget-boolean v5, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v5, :cond_1

    const-string v5, "SmartMemoryCleanService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SmartMemoryCleanService.incPowerOnTotalTime: power on total time "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/SmartMemoryCleanService;->mPowerOnTotalTime:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget v5, p0, Lcom/android/server/SmartMemoryCleanService;->mPowerOnTotalTime:I

    invoke-direct {p0, v5}, Lcom/android/server/SmartMemoryCleanService;->writePowerOnTotalTime(I)V

    iget v5, p0, Lcom/android/server/SmartMemoryCleanService;->mPowerOnTotalTime:I

    sget v6, Lcom/android/server/SmartMemoryCleanService;->mPowerOnMaxTotalTime:I

    if-lt v5, v6, :cond_2

    invoke-direct {p0}, Lcom/android/server/SmartMemoryCleanService;->moveSTUsageState()V

    :cond_2
    sget-boolean v5, Lcom/android/server/SmartMemoryCleanService;->mDebugPerformance:Z

    if-eqz v5, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v0, v5, v3

    const-string v5, "SmartMemoryCleanService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SmartMemoryCleanService.incPowerOnTotalTime: costTime "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void

    :cond_4
    iget v5, p0, Lcom/android/server/SmartMemoryCleanService;->mPowerOnTotalTime:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/server/SmartMemoryCleanService;->mPowerOnTotalTime:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .local v2, e:Ljava/lang/Exception;
    const-string v5, "SmartMemoryCleanService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SmartMemoryCleanService.incPowerOnTotalTime: catch exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private final informAMSToTrim()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .local v0, data:Landroid/os/Parcel;
    const/4 v2, 0x0

    .local v2, trimProc:Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/SmartMemoryCleanService;->getFilterTrimProcess()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    sget-boolean v3, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v3, :cond_1

    const-string v3, "SmartMemoryCleanService"

    const-string v4, "SmartMemoryCleanService.informAMSToTrim: cannot get strim process name"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/SmartMemoryCleanService;->mAMS:Landroid/os/IBinder;

    const v4, 0x5f534d43

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v3, v4, v0, v5, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, e:Landroid/os/RemoteException;
    const-string v3, "SmartMemoryCleanService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SmartMemoryCleanService.informAMSToTrim: transact caught remote exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    const-string v3, "SmartMemoryCleanService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SmartMemoryCleanService.informAMSToTrim: catch exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private final initAlwaysAllowStartProcList()V
    .locals 9

    .prologue
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    sget-object v6, Lcom/android/server/SmartMemoryCleanService;->PROCESS_INFO_FILE_NAME:Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .local v3, stream:Ljava/io/FileInputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .local v1, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v6, 0x0

    invoke-interface {v1, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    :cond_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .local v5, type:I
    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .local v4, tag:Ljava/lang/String;
    const-string v6, "p"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x0

    const-string v7, "pkg"

    invoke-interface {v1, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, procName:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/SmartMemoryCleanService;->mAlwaysAllowStartProcess:Ljava/util/HashSet;

    invoke-virtual {v6, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .end local v2           #procName:Ljava/lang/String;
    .end local v4           #tag:Ljava/lang/String;
    :cond_1
    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .end local v1           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v3           #stream:Ljava/io/FileInputStream;
    .end local v5           #type:I
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NullPointerException;
    const-string v6, "SmartMemoryCleanService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "failed parsing "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v6, "SmartMemoryCleanService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "failed parsing "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #e:Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v0

    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v6, "SmartMemoryCleanService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "failed parsing "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_3
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    const-string v6, "SmartMemoryCleanService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "failed parsing "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #e:Ljava/io/IOException;
    :catch_4
    move-exception v0

    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v6, "SmartMemoryCleanService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "failed parsing "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :catch_5
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v6, "SmartMemoryCleanService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "failed parsing "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private final initEmptyPowerOnTimeTable()V
    .locals 13

    .prologue
    const/4 v8, 0x0

    .local v8, cursor:Landroid/database/Cursor;
    const/4 v0, 0x0

    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v11, 0x0

    .local v11, values:Landroid/content/ContentValues;
    const/4 v3, 0x0

    .local v3, selection:Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, selectionArgs:[Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/SmartMemoryCleanService;->mDBRead:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_2

    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v4, v10

    .end local v10           #selectionArgs:[Ljava/lang/String;
    .local v4, selectionArgs:[Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .end local v4           #selectionArgs:[Ljava/lang/String;
    .restart local v10       #selectionArgs:[Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v3, "time_name=?"

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "power_on_time"

    aput-object v2, v4, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .end local v10           #selectionArgs:[Ljava/lang/String;
    .restart local v4       #selectionArgs:[Ljava/lang/String;
    :try_start_2
    const-string v1, "st_time_table"

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/android/server/SmartMemoryCleanService;->mDBWrite:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .end local v11           #values:Landroid/content/ContentValues;
    .local v12, values:Landroid/content/ContentValues;
    :try_start_3
    const-string v1, "time_name"

    const-string v2, "power_on_time"

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "time_value"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "st_time_table"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v12}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object v11, v12

    .end local v12           #values:Landroid/content/ContentValues;
    .restart local v11       #values:Landroid/content/ContentValues;
    :cond_4
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v4           #selectionArgs:[Ljava/lang/String;
    .restart local v10       #selectionArgs:[Ljava/lang/String;
    :catch_0
    move-exception v9

    move-object v4, v10

    .end local v10           #selectionArgs:[Ljava/lang/String;
    .restart local v4       #selectionArgs:[Ljava/lang/String;
    .local v9, e:Ljava/lang/Exception;
    :goto_1
    :try_start_4
    const-string v1, "SmartMemoryCleanService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SmartMemoryCleanService.initEmptyPowerOnTimeTable: catch exception "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v4           #selectionArgs:[Ljava/lang/String;
    .end local v9           #e:Ljava/lang/Exception;
    .restart local v10       #selectionArgs:[Ljava/lang/String;
    :catchall_0
    move-exception v1

    move-object v4, v10

    .end local v10           #selectionArgs:[Ljava/lang/String;
    .restart local v4       #selectionArgs:[Ljava/lang/String;
    :goto_2
    if-eqz v8, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v1

    :catchall_1
    move-exception v1

    goto :goto_2

    .end local v11           #values:Landroid/content/ContentValues;
    .restart local v12       #values:Landroid/content/ContentValues;
    :catchall_2
    move-exception v1

    move-object v11, v12

    .end local v12           #values:Landroid/content/ContentValues;
    .restart local v11       #values:Landroid/content/ContentValues;
    goto :goto_2

    :catch_1
    move-exception v9

    goto :goto_1

    .end local v11           #values:Landroid/content/ContentValues;
    .restart local v12       #values:Landroid/content/ContentValues;
    :catch_2
    move-exception v9

    move-object v11, v12

    .end local v12           #values:Landroid/content/ContentValues;
    .restart local v11       #values:Landroid/content/ContentValues;
    goto :goto_1
.end method

.method private final initSMCS()V
    .locals 21

    .prologue
    const-wide/16 v15, -0x1

    .local v15, timeStart:J
    const-wide/16 v4, -0x1

    .local v4, createTablesEnd:J
    const-wide/16 v7, -0x1

    .local v7, initDBEnd:J
    const-wide/16 v13, -0x1

    .local v13, readUsageEnd:J
    const-wide/16 v11, -0x1

    .local v11, readPREnd:J
    const-wide/16 v9, -0x1

    .local v9, readBlacklist:J
    const-wide/16 v2, -0x1

    .local v2, costTime:J
    :try_start_0
    sget-boolean v17, Lcom/android/server/SmartMemoryCleanService;->mDebugPerformance:Z

    if-eqz v17, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/SmartMemoryCleanService;->initAlwaysAllowStartProcList()V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/SmartMemoryCleanService;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/SmartMemoryCleanService;->mDBRead:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SmartMemoryCleanService;->mDBRead:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v17, v0

    if-nez v17, :cond_2

    new-instance v17, Ljava/lang/Exception;

    const-string v18, "get readable db failed"

    invoke-direct/range {v17 .. v18}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v6

    .local v6, e:Ljava/lang/Exception;
    const-string v17, "SmartMemoryCleanService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "SmartMemoryCleanService.initSMCS: catch exception "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/SmartMemoryCleanService;->deInitSMCS()V

    .end local v6           #e:Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void

    :cond_2
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/SmartMemoryCleanService;->getWriteableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/SmartMemoryCleanService;->mDBWrite:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SmartMemoryCleanService;->mDBWrite:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v17, v0

    if-nez v17, :cond_3

    new-instance v17, Ljava/lang/Exception;

    const-string v18, "get writable db failed"

    invoke-direct/range {v17 .. v18}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v17

    :cond_3
    sget-boolean v17, Lcom/android/server/SmartMemoryCleanService;->mDebugPerformance:Z

    if-eqz v17, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/server/SmartMemoryCleanService;->createAllTables()Z

    move-result v17

    if-nez v17, :cond_5

    new-instance v17, Ljava/lang/Exception;

    const-string v18, "create tables failed"

    invoke-direct/range {v17 .. v18}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v17

    :cond_5
    sget-boolean v17, Lcom/android/server/SmartMemoryCleanService;->mDebugPerformance:Z

    if-eqz v17, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v17, "SmartMemoryCleanService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "SmartMemoryCleanService.initSMCS: create tables cost time "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sub-long v19, v4, v7

    invoke-virtual/range {v18 .. v20}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " ms end."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SmartMemoryCleanService;->mSTPkgUsage:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/SmartMemoryCleanService;->readSTPkgUsage(Ljava/util/HashMap;)V

    sget-boolean v17, Lcom/android/server/SmartMemoryCleanService;->mDebugPerformance:Z

    if-eqz v17, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    const-string v17, "SmartMemoryCleanService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "SmartMemoryCleanService.initSMCS: read st usage cost time "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sub-long v19, v13, v4

    invoke-virtual/range {v18 .. v20}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " ms end."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/server/SmartMemoryCleanService;->readProcessRelations()V

    sget-boolean v17, Lcom/android/server/SmartMemoryCleanService;->mDebugPerformance:Z

    if-eqz v17, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const-string v17, "SmartMemoryCleanService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "SmartMemoryCleanService.initSMCS: read st process relation cost time "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sub-long v19, v11, v13

    invoke-virtual/range {v18 .. v20}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " ms end."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/android/server/SmartMemoryCleanService;->readProcessBlacklist()V

    sget-boolean v17, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v17, :cond_9

    invoke-direct/range {p0 .. p0}, Lcom/android/server/SmartMemoryCleanService;->dumpBlacklist()V

    :cond_9
    sget-boolean v17, Lcom/android/server/SmartMemoryCleanService;->mDebugPerformance:Z

    if-eqz v17, :cond_a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const-string v17, "SmartMemoryCleanService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "SmartMemoryCleanService.initSMCS: read st blacklist cost time "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sub-long v19, v9, v11

    invoke-virtual/range {v18 .. v20}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " ms end."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    sget-boolean v17, Lcom/android/server/SmartMemoryCleanService;->mDebugPerformance:Z

    if-eqz v17, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    sub-long v2, v17, v15

    const-string v17, "SmartMemoryCleanService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "SmartMemoryCleanService.initSMCS: cost time "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " ms end."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private final isProcessRelationExists(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .parameter "client"
    .parameter "server"

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v3, 0x0

    .local v3, selection:Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, cursor:Landroid/database/Cursor;
    const/4 v0, 0x0

    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v4, 0x0

    .local v4, selectionArgs:[Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    sget-boolean v1, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v1, :cond_1

    const-string v1, "SmartMemoryCleanService"

    const-string v2, "SmartMemoryCleanService.isProcessRelationExists: invalid client"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v11

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    sget-boolean v1, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v1, :cond_1

    const-string v1, "SmartMemoryCleanService"

    const-string v2, "SmartMemoryCleanService.isProcessRelationExists: invalid server"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/server/SmartMemoryCleanService;->mDBRead:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_5

    sget-boolean v1, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v1, :cond_1

    const-string v1, "SmartMemoryCleanService"

    const-string v2, "SmartMemoryCleanService.isProcessRelationExists: invalid DB"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    :try_start_0
    const-string v3, "st_process_relation_client=? AND st_process_relation_server=?"

    sget-boolean v1, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v1, :cond_6

    const-string v1, "SmartMemoryCleanService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SmartMemoryCleanService.isProcessRelationExists: selection "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v4, v1

    const/4 v1, 0x1

    aput-object p2, v4, v1

    const-string v1, "st_process_relation_table"

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_8

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-lez v1, :cond_8

    move v1, v10

    :goto_1
    if-eqz v8, :cond_7

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_7
    move v11, v1

    goto :goto_0

    :cond_8
    move v1, v11

    goto :goto_1

    :catch_0
    move-exception v9

    .local v9, e:Landroid/database/SQLException;
    :try_start_1
    const-string v1, "SmartMemoryCleanService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SmartMemoryCleanService.isProcessRelationExists: catch exception "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v9           #e:Landroid/database/SQLException;
    :catch_1
    move-exception v9

    .local v9, e:Ljava/lang/Exception;
    :try_start_2
    sget-boolean v1, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v1, :cond_9

    const-string v1, "SmartMemoryCleanService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SmartMemoryCleanService.isProcessRelationExists: catch exception: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_9
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_a

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v1
.end method

.method private final isProcessSharePkg(Ljava/util/HashSet;Ljava/util/HashSet;)Z
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, clientPkgs:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .local p2, serverPkgs:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v3, 0x0

    const/4 v1, 0x0

    .local v1, it:Ljava/util/Iterator;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/HashSet;->size()I

    move-result v4

    if-eqz v4, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, pkgClient:Ljava/lang/String;
    invoke-virtual {p2, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    .end local v2           #pkgClient:Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v4, "SmartMemoryCleanService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SmartMemoryCleanService.isProcessSharePkg: catch exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private final isSMCSInited()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/SmartMemoryCleanService;->mIsSMCSInited:Z

    return v0
.end method

.method private moveSTUsageState()V
    .locals 13

    .prologue
    const/4 v1, 0x0

    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v9, 0x0

    .local v9, where:Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, sql:Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, it:Ljava/util/Iterator;
    const/4 v6, -0x1

    .local v6, latestUsedTimeIndex:I
    const/4 v8, 0x0

    .local v8, stpur:Lcom/android/server/SmartMemoryCleanService$STPkgUsageRecord;
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/SmartMemoryCleanService;->getCurPowerOnTime()I

    move-result v10

    sget v11, Lcom/android/server/SmartMemoryCleanService;->mPowerOnMaxTotalTime:I

    sub-int v4, v10, v11

    .local v4, gateValue:I
    sget-boolean v10, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v10, :cond_0

    const-string v10, "SmartMemoryCleanService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SmartMemoryCleanService.moveSTUsageState: gateValue "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v10, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v10, :cond_1

    invoke-direct {p0}, Lcom/android/server/SmartMemoryCleanService;->dumpUsageTable()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/SmartMemoryCleanService;->mDBWrite:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_3

    sget-boolean v10, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v10, :cond_2

    const-string v10, "SmartMemoryCleanService"

    const-string v11, "SmartMemoryCleanService.moveSTUsageState: invalid DB"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v4           #gateValue:I
    :cond_2
    :goto_0
    return-void

    .restart local v4       #gateValue:I
    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "used_latest_time<="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "st_usage_table"

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v9, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_4
    :goto_1
    :try_start_2
    sget-boolean v10, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v10, :cond_5

    const-string v10, "SmartMemoryCleanService"

    const-string v11, "SmartMemoryCleanService.moveSTUsageState: move database over "

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    sget-boolean v10, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v10, :cond_6

    invoke-direct {p0}, Lcom/android/server/SmartMemoryCleanService;->dumpUsageTable()V

    :cond_6
    sget-boolean v10, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v10, :cond_7

    invoke-direct {p0}, Lcom/android/server/SmartMemoryCleanService;->dumpUsageData()V

    :cond_7
    iget-object v10, p0, Lcom/android/server/SmartMemoryCleanService;->mSTPkgUsage:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_8
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .local v3, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/SmartMemoryCleanService$STPkgUsageRecord;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Lcom/android/server/SmartMemoryCleanService$STPkgUsageRecord;

    move-object v8, v0

    iget v10, v8, Lcom/android/server/SmartMemoryCleanService$STPkgUsageRecord;->mLatestUsedTime:I

    if-gt v10, v4, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->remove()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .end local v3           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/SmartMemoryCleanService$STPkgUsageRecord;>;"
    .end local v4           #gateValue:I
    :catch_0
    move-exception v2

    .local v2, e:Ljava/lang/Exception;
    const-string v10, "SmartMemoryCleanService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SmartMemoryCleanService.moveSTUsageState: catch exception "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v2           #e:Ljava/lang/Exception;
    .restart local v4       #gateValue:I
    :catch_1
    move-exception v2

    .restart local v2       #e:Ljava/lang/Exception;
    :try_start_3
    sget-boolean v10, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v10, :cond_4

    const-string v10, "SmartMemoryCleanService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SmartMemoryCleanService.moveSTUsageState: catch exception "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v2           #e:Ljava/lang/Exception;
    :cond_9
    sget-boolean v10, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v10, :cond_a

    const-string v10, "SmartMemoryCleanService"

    const-string v11, "SmartMemoryCleanService.moveSTUsageState: move buffer over "

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    sget-boolean v10, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v10, :cond_2

    invoke-direct {p0}, Lcom/android/server/SmartMemoryCleanService;->dumpUsageData()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method

.method private readPowerOnTotalTime()I
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v8, 0x0

    .local v8, cursor:Landroid/database/Cursor;
    const/4 v0, 0x0

    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v3, 0x0

    .local v3, selection:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, columns:[Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, totalTime:I
    :try_start_0
    iget-object v0, p0, Lcom/android/server/SmartMemoryCleanService;->mDBRead:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_2

    sget-boolean v1, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v1, :cond_0

    const-string v1, "SmartMemoryCleanService"

    const-string v4, "SmartMemoryCleanService.readPowerOnTotalTime: invalid DB"

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    move v1, v11

    :goto_0
    return v1

    :cond_2
    :try_start_1
    const-string v3, "time_name=\'power_on_time\'"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "time_value"

    aput-object v4, v2, v1

    const-string v1, "st_time_table"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-nez v8, :cond_5

    sget-boolean v1, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v1, :cond_3

    const-string v1, "SmartMemoryCleanService"

    const-string v4, "SmartMemoryCleanService.readPowerOnTotalTime: invalid query result."

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    move v1, v11

    goto :goto_0

    :cond_5
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    :goto_1
    sget-boolean v1, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v1, :cond_6

    const-string v1, "SmartMemoryCleanService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SmartMemoryCleanService.readPowerOnTotalTime: totalTime "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_6
    if-eqz v8, :cond_7

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_7
    move v1, v10

    goto :goto_0

    :cond_8
    const/4 v10, 0x0

    goto :goto_1

    :catch_0
    move-exception v9

    .local v9, e:Ljava/lang/Exception;
    :try_start_3
    const-string v1, "SmartMemoryCleanService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SmartMemoryCleanService.readPowerOnTotalTime: catch exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v8, :cond_9

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_9
    move v1, v11

    goto :goto_0

    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_a

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v1
.end method

.method private final readProcessBlacklist()V
    .locals 12

    .prologue
    const/4 v9, 0x0

    .local v9, cursor:Landroid/database/Cursor;
    const/4 v0, 0x0

    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .local v8, count:I
    :try_start_0
    iget-object v0, p0, Lcom/android/server/SmartMemoryCleanService;->mDBRead:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_2

    sget-boolean v1, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v1, :cond_0

    const-string v1, "SmartMemoryCleanService"

    const-string v2, "SmartMemoryCleanService.readProcessBlacklist: invalid read DB"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    :try_start_1
    const-string v1, "st_process_blacklist_table"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-nez v9, :cond_4

    sget-boolean v1, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v1, :cond_3

    const-string v1, "SmartMemoryCleanService"

    const-string v2, "SmartMemoryCleanService.readProcessBlacklist: invalid query result."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_4
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v8

    sget v1, Lcom/android/server/SmartMemoryCleanService;->mMaxBlacklistNum:I

    if-le v8, v1, :cond_6

    sget-boolean v1, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v1, :cond_5

    const-string v1, "SmartMemoryCleanService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SmartMemoryCleanService.readProcessBlacklist: too many black processes "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/SmartMemoryCleanService;->mSTBlacklist:Ljava/util/HashSet;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_6
    if-lez v8, :cond_7

    :try_start_3
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/SmartMemoryCleanService;->mSTBlacklist:Ljava/util/HashSet;

    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .local v11, processName:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/SmartMemoryCleanService;->mSTBlacklist:Ljava/util/HashSet;

    invoke-virtual {v1, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .end local v11           #processName:Ljava/lang/String;
    :catch_0
    move-exception v10

    .local v10, e:Ljava/lang/Exception;
    :try_start_4
    const-string v1, "SmartMemoryCleanService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SmartMemoryCleanService.readProcessBlacklist: catch exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v10           #e:Ljava/lang/Exception;
    :cond_7
    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    if-eqz v9, :cond_8

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v1
.end method

.method private final readProcessRelations()V
    .locals 15

    .prologue
    const/4 v10, 0x0

    .local v10, cursor:Landroid/database/Cursor;
    const/4 v0, 0x0

    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v9, 0x0

    .local v9, count:I
    const/4 v13, 0x0

    .local v13, stprr:Lcom/android/server/SmartMemoryCleanService$STProcessRelationRecord;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/SmartMemoryCleanService;->mDBRead:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_2

    sget-boolean v1, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v1, :cond_0

    const-string v1, "SmartMemoryCleanService"

    const-string v2, "SmartMemoryCleanService.readProcessRelations: invalid read DB"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    if-eqz v10, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    :try_start_1
    const-string v1, "st_process_relation_table"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-nez v10, :cond_4

    sget-boolean v1, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v1, :cond_3

    const-string v1, "SmartMemoryCleanService"

    const-string v2, "SmartMemoryCleanService.readProcessRelations: invalid query result."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    if-eqz v10, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_4
    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v9

    sget v1, Lcom/android/server/SmartMemoryCleanService;->mMaxProcessRelationNum:I

    if-le v9, v1, :cond_6

    sget-boolean v1, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v1, :cond_5

    const-string v1, "SmartMemoryCleanService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SmartMemoryCleanService.readProcessRelations: too many process relations "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_5
    if-eqz v10, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_6
    if-eqz v10, :cond_8

    if-lez v9, :cond_8

    :try_start_3
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/SmartMemoryCleanService;->mSTProcessRelations:Ljava/util/HashSet;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object v14, v13

    .end local v13           #stprr:Lcom/android/server/SmartMemoryCleanService$STProcessRelationRecord;
    .local v14, stprr:Lcom/android/server/SmartMemoryCleanService$STProcessRelationRecord;
    :goto_1
    :try_start_4
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .local v8, client:Ljava/lang/String;
    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .local v12, server:Ljava/lang/String;
    new-instance v13, Lcom/android/server/SmartMemoryCleanService$STProcessRelationRecord;

    invoke-direct {v13, v8, v12}, Lcom/android/server/SmartMemoryCleanService$STProcessRelationRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .end local v14           #stprr:Lcom/android/server/SmartMemoryCleanService$STProcessRelationRecord;
    .restart local v13       #stprr:Lcom/android/server/SmartMemoryCleanService$STProcessRelationRecord;
    :try_start_5
    iget-object v1, p0, Lcom/android/server/SmartMemoryCleanService;->mSTProcessRelations:Ljava/util/HashSet;

    invoke-virtual {v1, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-object v14, v13

    .end local v13           #stprr:Lcom/android/server/SmartMemoryCleanService$STProcessRelationRecord;
    .restart local v14       #stprr:Lcom/android/server/SmartMemoryCleanService$STProcessRelationRecord;
    goto :goto_1

    .end local v8           #client:Ljava/lang/String;
    .end local v12           #server:Ljava/lang/String;
    :cond_7
    move-object v13, v14

    .end local v14           #stprr:Lcom/android/server/SmartMemoryCleanService$STProcessRelationRecord;
    .restart local v13       #stprr:Lcom/android/server/SmartMemoryCleanService$STProcessRelationRecord;
    :cond_8
    if-eqz v10, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catch_0
    move-exception v11

    .local v11, e:Ljava/lang/Exception;
    :goto_2
    :try_start_6
    const-string v1, "SmartMemoryCleanService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SmartMemoryCleanService.readProcessRelations: catch exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v10, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v11           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    :goto_3
    if-eqz v10, :cond_9

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v1

    .end local v13           #stprr:Lcom/android/server/SmartMemoryCleanService$STProcessRelationRecord;
    .restart local v14       #stprr:Lcom/android/server/SmartMemoryCleanService$STProcessRelationRecord;
    :catchall_1
    move-exception v1

    move-object v13, v14

    .end local v14           #stprr:Lcom/android/server/SmartMemoryCleanService$STProcessRelationRecord;
    .restart local v13       #stprr:Lcom/android/server/SmartMemoryCleanService$STProcessRelationRecord;
    goto :goto_3

    .end local v13           #stprr:Lcom/android/server/SmartMemoryCleanService$STProcessRelationRecord;
    .restart local v14       #stprr:Lcom/android/server/SmartMemoryCleanService$STProcessRelationRecord;
    :catch_1
    move-exception v11

    move-object v13, v14

    .end local v14           #stprr:Lcom/android/server/SmartMemoryCleanService$STProcessRelationRecord;
    .restart local v13       #stprr:Lcom/android/server/SmartMemoryCleanService$STProcessRelationRecord;
    goto :goto_2
.end method

.method private final readSTPkgUsage(Ljava/util/HashMap;)V
    .locals 16
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/SmartMemoryCleanService$STPkgUsageRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, stPkgUsages:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/SmartMemoryCleanService$STPkgUsageRecord;>;"
    const/4 v1, 0x0

    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v10, 0x0

    .local v10, cursor:Landroid/database/Cursor;
    const/4 v13, 0x0

    .local v13, pkgName:Ljava/lang/String;
    const/4 v12, -0x1

    .local v12, lastUsedTimeIndex:I
    const/4 v14, 0x0

    .local v14, stpur:Lcom/android/server/SmartMemoryCleanService$STPkgUsageRecord;
    sget-boolean v2, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v2, :cond_0

    const-string v2, "SmartMemoryCleanService"

    const-string v3, "SmartMemoryCleanService.readSTPkgUsage:"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/SmartMemoryCleanService;->mDBRead:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_3

    sget-boolean v2, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v2, :cond_1

    const-string v2, "SmartMemoryCleanService"

    const-string v3, "SmartMemoryCleanService.readSTPkgUsage: invalid read db"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    :try_start_0
    const-string v2, "st_usage_table"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_4

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_6

    :cond_4
    sget-boolean v2, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v2, :cond_5

    const-string v2, "SmartMemoryCleanService"

    const-string v3, "SmartMemoryCleanService.readSTPkgUsage: no usage data"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    if-eqz v10, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_6
    :goto_1
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/SmartMemoryCleanService$STPkgUsageRecord;

    move-object v14, v0

    if-nez v14, :cond_7

    new-instance v15, Lcom/android/server/SmartMemoryCleanService$STPkgUsageRecord;

    invoke-direct {v15, v13, v12}, Lcom/android/server/SmartMemoryCleanService$STPkgUsageRecord;-><init>(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .end local v14           #stpur:Lcom/android/server/SmartMemoryCleanService$STPkgUsageRecord;
    .local v15, stpur:Lcom/android/server/SmartMemoryCleanService$STPkgUsageRecord;
    :try_start_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v14, v15

    .end local v15           #stpur:Lcom/android/server/SmartMemoryCleanService$STPkgUsageRecord;
    .restart local v14       #stpur:Lcom/android/server/SmartMemoryCleanService$STPkgUsageRecord;
    goto :goto_1

    :cond_7
    :try_start_3
    sget-boolean v2, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v2, :cond_8

    const-string v2, "SmartMemoryCleanService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SmartMemoryCleanService.readSTPkgUsage: got another pkg "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iput v12, v14, Lcom/android/server/SmartMemoryCleanService$STPkgUsageRecord;->mLatestUsedTime:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v11

    .local v11, e:Ljava/lang/Exception;
    :goto_2
    :try_start_4
    const-string v2, "SmartMemoryCleanService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SmartMemoryCleanService.readSTPkgUsage: catch exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v10, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v11           #e:Ljava/lang/Exception;
    :cond_9
    if-eqz v10, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    :goto_3
    if-eqz v10, :cond_a

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v2

    .end local v14           #stpur:Lcom/android/server/SmartMemoryCleanService$STPkgUsageRecord;
    .restart local v15       #stpur:Lcom/android/server/SmartMemoryCleanService$STPkgUsageRecord;
    :catchall_1
    move-exception v2

    move-object v14, v15

    .end local v15           #stpur:Lcom/android/server/SmartMemoryCleanService$STPkgUsageRecord;
    .restart local v14       #stpur:Lcom/android/server/SmartMemoryCleanService$STPkgUsageRecord;
    goto :goto_3

    .end local v14           #stpur:Lcom/android/server/SmartMemoryCleanService$STPkgUsageRecord;
    .restart local v15       #stpur:Lcom/android/server/SmartMemoryCleanService$STPkgUsageRecord;
    :catch_1
    move-exception v11

    move-object v14, v15

    .end local v15           #stpur:Lcom/android/server/SmartMemoryCleanService$STPkgUsageRecord;
    .restart local v14       #stpur:Lcom/android/server/SmartMemoryCleanService$STPkgUsageRecord;
    goto :goto_2
.end method

.method private removeAllSTUsageStatData()V
    .locals 4

    .prologue
    :try_start_0
    const-string v1, "st_usage_table"

    invoke-direct {p0, v1}, Lcom/android/server/SmartMemoryCleanService;->dropTable(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SmartMemoryCleanService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SmartMemoryCleanService.removeAllSTUsageStatData: catch exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private removePowerOnTimeData()V
    .locals 4

    .prologue
    :try_start_0
    const-string v1, "st_time_table"

    invoke-direct {p0, v1}, Lcom/android/server/SmartMemoryCleanService;->dropTable(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SmartMemoryCleanService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SmartMemoryCleanService.removePowerOnTimeData: catch exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private final removeProcessInBlacklist(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "processName"

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .local v2, where:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, whereArg:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, sql:Ljava/lang/String;
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    iget-object v5, p0, Lcom/android/server/SmartMemoryCleanService;->mSTBlacklist:Ljava/util/HashSet;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/SmartMemoryCleanService;->mSTBlacklist:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/SmartMemoryCleanService;->mSTBlacklist:Ljava/util/HashSet;

    invoke-virtual {v5, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/SmartMemoryCleanService;->mSTBlacklist:Ljava/util/HashSet;

    invoke-virtual {v5, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DELETE FROM st_process_blacklist_table WHERE st_process_blacklist_processname=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-boolean v5, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v5, :cond_3

    const-string v5, "SmartMemoryCleanService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SmartMemoryCleanService.removeProcessInBlacklist: delete sql "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    move-object v4, v1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v5, "SmartMemoryCleanService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SmartMemoryCleanService.removeProcessInBlacklist: catch exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private final removeProcessRelationTable()V
    .locals 4

    .prologue
    :try_start_0
    const-string v1, "st_process_relation_table"

    invoke-direct {p0, v1}, Lcom/android/server/SmartMemoryCleanService;->dropTable(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SmartMemoryCleanService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SmartMemoryCleanService.removeProcessRelationTable: catch exception "

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

.method private final setSMCSInited(Z)V
    .locals 0
    .parameter "isInited"

    .prologue
    iput-boolean p1, p0, Lcom/android/server/SmartMemoryCleanService;->mIsSMCSInited:Z

    return-void
.end method

.method private final smartTrimExecSqls(Ljava/util/HashSet;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, sqls:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v3, 0x0

    .local v3, it:Ljava/util/Iterator;
    const/4 v4, 0x0

    .local v4, sql:Ljava/lang/String;
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/SmartMemoryCleanService;->mDBWrite:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_2

    sget-boolean v5, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v5, :cond_0

    const-string v5, "SmartMemoryCleanService"

    const-string v6, "SmartMemoryCleanService.smartTrimExecSqls: invalid DB"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .local v2, e:Ljava/lang/Exception;
    const-string v5, "SmartMemoryCleanService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SmartMemoryCleanService.smartTrimExecSqls: catch exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v2           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_1
    const-string v5, "BEGIN TRANSACTION;"

    invoke-virtual {v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    sget-boolean v5, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v5, :cond_4

    const-string v5, "SmartMemoryCleanService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SmartMemoryCleanService.smartTrimExecSqls: exec sql "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v5, "COMMIT TRANSACTION;"

    invoke-virtual {v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private final smartTrimHandleSTPEvent(Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessEvent;Ljava/util/HashSet;Ljava/util/HashSet;)V
    .locals 8
    .parameter "e"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessEvent;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, visibleWidgetPkgs:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .local p3, sqls:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, sql:Ljava/lang/String;
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p3, :cond_0

    :try_start_0
    iget v5, p1, Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessEvent;->mEvent:I

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move-object v0, p1

    check-cast v0, Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessAddRelation;

    move-object v2, v0

    .local v2, ebc:Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessAddRelation;
    invoke-direct {p0, v2}, Lcom/android/server/SmartMemoryCleanService;->addProcessRelation(Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessAddRelation;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    invoke-virtual {p3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v2           #ebc:Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessAddRelation;
    :catch_0
    move-exception v3

    .local v3, exce:Ljava/lang/Exception;
    const-string v5, "SmartMemoryCleanService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SmartMemoryCleanService.smartTrimHandleSTPEvent: catch exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v3           #exce:Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    move-object v0, p1

    check-cast v0, Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessPkgResume;

    move-object v1, v0

    .local v1, ePkgResumed:Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessPkgResume;
    invoke-virtual {p0, v1, p2}, Lcom/android/server/SmartMemoryCleanService;->noteResumeComponent(Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessPkgResume;Ljava/util/HashSet;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    invoke-virtual {p3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v1}, Lcom/android/server/SmartMemoryCleanService;->deleteBlacklistForResumeComponent(Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessPkgResume;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    invoke-virtual {p3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final smartTrimHandleSTPEvents()V
    .locals 31

    .prologue
    const/16 v20, 0x0

    .local v20, stpEvents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessEvent;>;"
    const/16 v22, 0x0

    .local v22, stpEventsFilter:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessEvent;>;"
    const/16 v16, 0x0

    .local v16, it:Ljava/util/Iterator;
    const/4 v13, 0x0

    .local v13, e:Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessEvent;
    const/16 v17, 0x0

    .local v17, sql:Ljava/lang/String;
    const/16 v18, 0x0

    .local v18, sqls:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/16 v26, 0x0

    .local v26, visibleWidgetPkgs:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const-wide/16 v24, -0x1

    .local v24, timeStart:J
    const-wide/16 v5, -0x1

    .local v5, costHandleEvents:J
    const-wide/16 v11, -0x1

    .local v11, curTimeMili:J
    const-wide/16 v7, -0x1

    .local v7, costStpe:J
    const-wide/16 v3, -0x1

    .local v3, costExeSql:J
    :try_start_0
    sget-boolean v28, Lcom/android/server/SmartMemoryCleanService;->mDebugPerformance:Z

    if-eqz v28, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    :cond_0
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .end local v20           #stpEvents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessEvent;>;"
    .local v21, stpEvents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessEvent;>;"
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SmartMemoryCleanService;->mAMSInstance:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->moveSTPEvent(Ljava/util/ArrayList;)V

    sget-boolean v28, Lcom/android/server/SmartMemoryCleanService;->mDebugPerformance:Z

    if-eqz v28, :cond_1

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v15

    .local v15, eventNum:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    sub-long v9, v28, v24

    .local v9, costTime:J
    const-string v28, "SmartMemoryCleanService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "SmartMemoryCleanService.smartTrimHandleSTPEvents: got "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " events cost "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " ms."

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .end local v9           #costTime:J
    .end local v15           #eventNum:I
    :cond_1
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v28

    if-nez v28, :cond_3

    sget-boolean v28, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v28, :cond_2

    const-string v28, "SmartMemoryCleanService"

    const-string v29, "SmartMemoryCleanService.smartTrimHandleSTPEvents: no event got."

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .end local v13           #e:Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessEvent;
    .end local v21           #stpEvents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessEvent;>;"
    :cond_2
    :goto_0
    return-void

    .restart local v13       #e:Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessEvent;
    .restart local v21       #stpEvents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessEvent;>;"
    :cond_3
    new-instance v27, Ljava/util/HashSet;

    invoke-direct/range {v27 .. v27}, Ljava/util/HashSet;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .end local v26           #visibleWidgetPkgs:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .local v27, visibleWidgetPkgs:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SmartMemoryCleanService;->mAppWidget:Lcom/android/server/AppWidgetService;

    move-object/from16 v28, v0

    if-eqz v28, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SmartMemoryCleanService;->mAppWidget:Lcom/android/server/AppWidgetService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/server/AppWidgetService;->getVisibleWidgets(Ljava/util/HashSet;)Z

    :cond_4
    new-instance v23, Ljava/util/HashSet;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashSet;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .end local v22           #stpEventsFilter:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessEvent;>;"
    .local v23, stpEventsFilter:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessEvent;>;"
    :try_start_3
    new-instance v19, Ljava/util/HashSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashSet;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .end local v18           #sqls:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .local v19, sqls:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :try_start_4
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_5
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_7

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v0, v28

    check-cast v0, Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessEvent;

    move-object v13, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_6

    sget-boolean v28, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v28, :cond_5

    const-string v28, "SmartMemoryCleanService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "SmartMemoryCleanService.smartTrimHandleSTPEvents: event "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v13}, Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessEvent;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " has been handled"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception v28

    move-object/from16 v26, v27

    .end local v27           #visibleWidgetPkgs:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v26       #visibleWidgetPkgs:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v18, v19

    .end local v19           #sqls:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v18       #sqls:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object v14, v13

    .end local v13           #e:Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessEvent;
    .local v14, e:Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessEvent;
    move-object/from16 v22, v23

    .end local v23           #stpEventsFilter:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessEvent;>;"
    .restart local v22       #stpEventsFilter:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessEvent;>;"
    move-object/from16 v20, v21

    .end local v21           #stpEvents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessEvent;>;"
    .restart local v20       #stpEvents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessEvent;>;"
    move-object/from16 v13, v28

    .local v13, e:Ljava/lang/Exception;
    :goto_2
    const-string v28, "SmartMemoryCleanService"

    .end local v14           #e:Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessEvent;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "SmartMemoryCleanService.smartTrimHandleSTPEvents: catch exception: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v13}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v18           #sqls:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v20           #stpEvents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessEvent;>;"
    .end local v22           #stpEventsFilter:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessEvent;>;"
    .end local v26           #visibleWidgetPkgs:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .local v13, e:Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessEvent;
    .restart local v19       #sqls:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v21       #stpEvents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessEvent;>;"
    .restart local v23       #stpEventsFilter:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessEvent;>;"
    .restart local v27       #visibleWidgetPkgs:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_6
    :try_start_5
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v19

    invoke-direct {v0, v13, v1, v2}, Lcom/android/server/SmartMemoryCleanService;->smartTrimHandleSTPEvent(Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessEvent;Ljava/util/HashSet;Ljava/util/HashSet;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    sget-boolean v28, Lcom/android/server/SmartMemoryCleanService;->mDebugPerformance:Z

    if-eqz v28, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    sub-long v5, v28, v24

    const-string v28, "SmartMemoryCleanService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "SmartMemoryCleanService.smartTrimHandleSTPEvents: handle all the events cost "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " ms."

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/SmartMemoryCleanService;->smartTrimExecSqls(Ljava/util/HashSet;)V

    sget-boolean v28, Lcom/android/server/SmartMemoryCleanService;->mDebugPerformance:Z

    if-eqz v28, :cond_9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long v7, v11, v24

    sub-long v28, v11, v5

    sub-long v3, v28, v24

    const-string v28, "SmartMemoryCleanService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "SmartMemoryCleanService.smartTrimHandleSTPEvents: exec sqls cost "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " ms."

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v28, "SmartMemoryCleanService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "SmartMemoryCleanService.smartTrimHandleSTPEvents: stpevents cost "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " ms."

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/server/SmartMemoryCleanService;->dumpProcessRelationTable()V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/SmartMemoryCleanService;->dumpProcessRelation()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-object/from16 v26, v27

    .end local v27           #visibleWidgetPkgs:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v26       #visibleWidgetPkgs:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v18, v19

    .end local v19           #sqls:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v18       #sqls:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v22, v23

    .end local v23           #stpEventsFilter:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessEvent;>;"
    .restart local v22       #stpEventsFilter:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessEvent;>;"
    goto/16 :goto_0

    .end local v21           #stpEvents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessEvent;>;"
    .restart local v20       #stpEvents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessEvent;>;"
    :catch_1
    move-exception v28

    move-object v14, v13

    .end local v13           #e:Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessEvent;
    .restart local v14       #e:Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessEvent;
    move-object/from16 v13, v28

    goto/16 :goto_2

    .end local v14           #e:Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessEvent;
    .end local v20           #stpEvents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessEvent;>;"
    .restart local v13       #e:Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessEvent;
    .restart local v21       #stpEvents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessEvent;>;"
    :catch_2
    move-exception v28

    move-object v14, v13

    .end local v13           #e:Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessEvent;
    .restart local v14       #e:Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessEvent;
    move-object/from16 v20, v21

    .end local v21           #stpEvents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessEvent;>;"
    .restart local v20       #stpEvents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessEvent;>;"
    move-object/from16 v13, v28

    goto/16 :goto_2

    .end local v14           #e:Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessEvent;
    .end local v20           #stpEvents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessEvent;>;"
    .end local v26           #visibleWidgetPkgs:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v13       #e:Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessEvent;
    .restart local v21       #stpEvents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessEvent;>;"
    .restart local v27       #visibleWidgetPkgs:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :catch_3
    move-exception v28

    move-object/from16 v26, v27

    .end local v27           #visibleWidgetPkgs:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v26       #visibleWidgetPkgs:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object v14, v13

    .end local v13           #e:Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessEvent;
    .restart local v14       #e:Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessEvent;
    move-object/from16 v20, v21

    .end local v21           #stpEvents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessEvent;>;"
    .restart local v20       #stpEvents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessEvent;>;"
    move-object/from16 v13, v28

    goto/16 :goto_2

    .end local v14           #e:Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessEvent;
    .end local v20           #stpEvents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessEvent;>;"
    .end local v22           #stpEventsFilter:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessEvent;>;"
    .end local v26           #visibleWidgetPkgs:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v13       #e:Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessEvent;
    .restart local v21       #stpEvents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessEvent;>;"
    .restart local v23       #stpEventsFilter:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessEvent;>;"
    .restart local v27       #visibleWidgetPkgs:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :catch_4
    move-exception v28

    move-object/from16 v26, v27

    .end local v27           #visibleWidgetPkgs:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v26       #visibleWidgetPkgs:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object v14, v13

    .end local v13           #e:Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessEvent;
    .restart local v14       #e:Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessEvent;
    move-object/from16 v22, v23

    .end local v23           #stpEventsFilter:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessEvent;>;"
    .restart local v22       #stpEventsFilter:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessEvent;>;"
    move-object/from16 v20, v21

    .end local v21           #stpEvents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessEvent;>;"
    .restart local v20       #stpEvents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessEvent;>;"
    move-object/from16 v13, v28

    goto/16 :goto_2
.end method

.method private final smartTrimProcess()V
    .locals 18

    .prologue
    const-wide/16 v12, -0x1

    .local v12, timeStart:J
    const-wide/16 v9, -0x1

    .local v9, costgetRunning:J
    const-wide/16 v3, -0x1

    .local v3, costFilter:J
    const-wide/16 v5, -0x1

    .local v5, costSend:J
    const-wide/16 v1, -0x1

    .local v1, costDumpRunningProcesses:J
    const-wide/16 v7, -0x1

    .local v7, costTime:J
    :try_start_0
    sget-boolean v14, Lcom/android/server/SmartMemoryCleanService;->mDebugPerformance:Z

    if-eqz v14, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/SmartMemoryCleanService;->getRunningList()V

    sget-boolean v14, Lcom/android/server/SmartMemoryCleanService;->mDebugPerformance:Z

    if-eqz v14, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long v9, v14, v12

    const-string v14, "SmartMemoryCleanService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "SmartMemoryCleanService.smartTrimProcess: get "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SmartMemoryCleanService;->mRunningList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " Running processes cost "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ms."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-boolean v14, Lcom/android/server/SmartMemoryCleanService;->mDebugPerformance:Z

    if-eqz v14, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long v1, v14, v12

    const-string v14, "SmartMemoryCleanService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "SmartMemoryCleanService.smartTrimProcess: dump running processes cost "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sub-long v16, v1, v9

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ms."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/SmartMemoryCleanService;->filerTrimProcess()V

    sget-boolean v14, Lcom/android/server/SmartMemoryCleanService;->mDebugPerformance:Z

    if-eqz v14, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long v3, v14, v12

    const-string v14, "SmartMemoryCleanService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "SmartMemoryCleanService.smartTrimProcess: filter cost "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sub-long v16, v3, v1

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ms."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    sget-boolean v14, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v14, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/android/server/SmartMemoryCleanService;->dumpFilterResult()V

    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/SmartMemoryCleanService;->mFilterTrim:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->size()I

    move-result v14

    if-nez v14, :cond_a

    sget-boolean v14, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v14, :cond_5

    const-string v14, "SmartMemoryCleanService"

    const-string v15, "SmartMemoryCleanService.smartTrimProcess: no process to trim"

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/SmartMemoryCleanService;->setTrimApkStarted(Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/SmartMemoryCleanService;->mTrimRoundCB:Lcom/android/server/SmartMemoryCleanService$TrimRoundTimerCB;

    if-eqz v14, :cond_7

    sget-boolean v14, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v14, :cond_6

    const-string v14, "SmartMemoryCleanService"

    const-string v15, "SmartMemoryCleanService.smartTrimProcess: cancel the trim round timer cb"

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/SmartMemoryCleanService;->mTrimRoundCB:Lcom/android/server/SmartMemoryCleanService$TrimRoundTimerCB;

    invoke-virtual {v14}, Lcom/android/server/SmartMemoryCleanService$TrimRoundTimerCB;->cancel()Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/SmartMemoryCleanService;->mTrimRoundCB:Lcom/android/server/SmartMemoryCleanService$TrimRoundTimerCB;

    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/SmartMemoryCleanService;->mTrimRoundTimer:Ljava/util/Timer;

    if-eqz v14, :cond_9

    sget-boolean v14, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v14, :cond_8

    const-string v14, "SmartMemoryCleanService"

    const-string v15, "SmartMemoryCleanService.smartTrimProcess: cancel the trim round timer"

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/SmartMemoryCleanService;->mTrimRoundTimer:Ljava/util/Timer;

    invoke-virtual {v14}, Ljava/util/Timer;->cancel()V

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/SmartMemoryCleanService;->mTrimRoundTimer:Ljava/util/Timer;

    :cond_9
    :goto_0
    return-void

    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/SmartMemoryCleanService;->informAMSToTrim()V

    sget-boolean v14, Lcom/android/server/SmartMemoryCleanService;->mDebugPerformance:Z

    if-eqz v14, :cond_b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long v5, v14, v12

    const-string v14, "SmartMemoryCleanService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "SmartMemoryCleanService.smartTrimProcess: inform trim cost "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sub-long v16, v5, v3

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ms."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    sget-boolean v14, Lcom/android/server/SmartMemoryCleanService;->mDebugPerformance:Z

    if-eqz v14, :cond_9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long v7, v14, v12

    const-string v14, "SmartMemoryCleanService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "SmartMemoryCleanService.smartTrimProcess: cost "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ms."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v11

    .local v11, e:Ljava/lang/Exception;
    const-string v14, "SmartMemoryCleanService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "SmartMemoryCleanService.smartTrimProcess: catch exception: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private final startMemoryObserve()V
    .locals 9

    .prologue
    :try_start_0
    const-string v0, "ro.smart_trim.ob_period"

    const/16 v1, 0x12c

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v8

    .local v8, period:I
    const-string v0, "ro.st.1st_trim"

    const/16 v1, 0x78

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    .local v6, delay:I
    sget-boolean v0, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v0, :cond_0

    const-string v0, "SmartMemoryCleanService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmartMemoryCleanService.startMemoryObserve: start observing period "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " delay "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/SmartMemoryCleanService;->mTimer:Ljava/util/Timer;

    new-instance v0, Lcom/android/server/SmartMemoryCleanService$SMCSTimerTask;

    invoke-direct {v0, p0}, Lcom/android/server/SmartMemoryCleanService$SMCSTimerTask;-><init>(Lcom/android/server/SmartMemoryCleanService;)V

    iput-object v0, p0, Lcom/android/server/SmartMemoryCleanService;->mMO:Lcom/android/server/SmartMemoryCleanService$SMCSTimerTask;

    iget-object v0, p0, Lcom/android/server/SmartMemoryCleanService;->mTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/android/server/SmartMemoryCleanService;->mMO:Lcom/android/server/SmartMemoryCleanService$SMCSTimerTask;

    mul-int/lit16 v2, v6, 0x3e8

    int-to-long v2, v2

    mul-int/lit16 v4, v8, 0x3e8

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v6           #delay:I
    .end local v8           #period:I
    :goto_0
    return-void

    :catch_0
    move-exception v7

    .local v7, e:Ljava/lang/Exception;
    const-string v0, "SmartMemoryCleanService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmartMemoryCleanService.startMemoryObserve: catch exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private final startSmartTrimProcess()V
    .locals 4

    .prologue
    sget-boolean v1, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v1, :cond_0

    const-string v1, "SmartMemoryCleanService"

    const-string v2, "SmartMemoryCleanService.startSmartTrimProcess: "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/SmartMemoryCleanService;->setTrimApkStarted(Z)V

    invoke-direct {p0}, Lcom/android/server/SmartMemoryCleanService;->smartTrimProcess()V

    invoke-virtual {p0}, Lcom/android/server/SmartMemoryCleanService;->isTrimApkStarted()Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/server/SmartMemoryCleanService;->startTrimRoundTimer()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SmartMemoryCleanService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SmartMemoryCleanService.startSmartTrimProcess: catch exception: "

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

.method private final startTrimRoundTimer()V
    .locals 5

    .prologue
    sget-boolean v1, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v1, :cond_0

    const-string v1, "SmartMemoryCleanService"

    const-string v2, "SmartMemoryCleanService.startTrimRoundTimer: start trim round timer."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/android/server/SmartMemoryCleanService;->mTrimRoundTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/server/SmartMemoryCleanService$TrimRoundTimerCB;

    invoke-direct {v1, p0}, Lcom/android/server/SmartMemoryCleanService$TrimRoundTimerCB;-><init>(Lcom/android/server/SmartMemoryCleanService;)V

    iput-object v1, p0, Lcom/android/server/SmartMemoryCleanService;->mTrimRoundCB:Lcom/android/server/SmartMemoryCleanService$TrimRoundTimerCB;

    iget-object v1, p0, Lcom/android/server/SmartMemoryCleanService;->mTrimRoundTimer:Ljava/util/Timer;

    iget-object v2, p0, Lcom/android/server/SmartMemoryCleanService;->mTrimRoundCB:Lcom/android/server/SmartMemoryCleanService$TrimRoundTimerCB;

    sget v3, Lcom/android/server/SmartMemoryCleanService;->TRIM_ROUND_TIMER_PERIOD:I

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SmartMemoryCleanService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SmartMemoryCleanService.startTrimRoundTimer: catch exception: "

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

.method private writePowerOnTotalTime(I)V
    .locals 8
    .parameter "curTime"

    .prologue
    const/4 v0, 0x0

    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x0

    .local v2, values:Landroid/content/ContentValues;
    const/4 v4, 0x0

    .local v4, where:Ljava/lang/String;
    sget-boolean v5, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v5, :cond_0

    const-string v5, "SmartMemoryCleanService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SmartMemoryCleanService.writePowerOnTotalTime: cur time "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-gez p1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/SmartMemoryCleanService;->mDBWrite:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_3

    sget-boolean v5, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v5, :cond_1

    const-string v5, "SmartMemoryCleanService"

    const-string v6, "SmartMemoryCleanService.writePowerOnTotalTime: invalid DB"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    :goto_1
    const-string v5, "SmartMemoryCleanService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SmartMemoryCleanService.writePowerOnTotalTime: catch exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1           #e:Ljava/lang/Exception;
    :cond_3
    :try_start_1
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .end local v2           #values:Landroid/content/ContentValues;
    .local v3, values:Landroid/content/ContentValues;
    :try_start_2
    const-string v5, "time_value"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "time_name=\'power_on_time\'"

    const-string v5, "st_time_table"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v3, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v2, v3

    .end local v3           #values:Landroid/content/ContentValues;
    .restart local v2       #values:Landroid/content/ContentValues;
    goto :goto_0

    .end local v2           #values:Landroid/content/ContentValues;
    .restart local v3       #values:Landroid/content/ContentValues;
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3           #values:Landroid/content/ContentValues;
    .restart local v2       #values:Landroid/content/ContentValues;
    goto :goto_1
.end method

.method private final writeSTPkgUsageStat(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .parameter "pkgName"

    .prologue
    const/4 v0, 0x0

    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v3, 0x0

    .local v3, where:Ljava/lang/String;
    const/4 v11, -0x1

    .local v11, power_on_time:I
    const/4 v8, 0x0

    .local v8, cursor:Landroid/database/Cursor;
    const/4 v12, 0x0

    .local v12, sql:Ljava/lang/String;
    const/4 v13, 0x0

    .local v13, stpur:Lcom/android/server/SmartMemoryCleanService$STPkgUsageRecord;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return-object v1

    :cond_2
    invoke-direct {p0}, Lcom/android/server/SmartMemoryCleanService;->getCurPowerOnTime()I

    move-result v11

    iget-object v1, p0, Lcom/android/server/SmartMemoryCleanService;->mSTPkgUsage:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .end local v13           #stpur:Lcom/android/server/SmartMemoryCleanService$STPkgUsageRecord;
    check-cast v13, Lcom/android/server/SmartMemoryCleanService$STPkgUsageRecord;

    .restart local v13       #stpur:Lcom/android/server/SmartMemoryCleanService$STPkgUsageRecord;
    if-nez v13, :cond_4

    new-instance v13, Lcom/android/server/SmartMemoryCleanService$STPkgUsageRecord;

    .end local v13           #stpur:Lcom/android/server/SmartMemoryCleanService$STPkgUsageRecord;
    invoke-direct {v13, p1, v11}, Lcom/android/server/SmartMemoryCleanService$STPkgUsageRecord;-><init>(Ljava/lang/String;I)V

    .restart local v13       #stpur:Lcom/android/server/SmartMemoryCleanService$STPkgUsageRecord;
    iget-object v1, p0, Lcom/android/server/SmartMemoryCleanService;->mSTPkgUsage:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    iget-object v0, p0, Lcom/android/server/SmartMemoryCleanService;->mDBRead:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_5

    sget-boolean v1, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v1, :cond_3

    const-string v1, "SmartMemoryCleanService"

    const-string v2, "SmartMemoryCleanService.writeSTPkgUsageStat: invalid read db."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    iput v11, v13, Lcom/android/server/SmartMemoryCleanService$STPkgUsageRecord;->mLatestUsedTime:I

    goto :goto_1

    :cond_5
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pkg_name=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-boolean v1, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v1, :cond_6

    const-string v1, "SmartMemoryCleanService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SmartMemoryCleanService.writeSTPkgUsageStat: where "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const-string v1, "st_usage_table"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_7

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_b

    :cond_7
    const/4 v10, 0x1

    .local v10, isEmpty:Z
    :goto_2
    if-eqz v8, :cond_8

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_8
    if-eqz v10, :cond_c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INSERT INTO st_usage_table VALUES (\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    sget-boolean v1, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v1, :cond_9

    const-string v1, "SmartMemoryCleanService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SmartMemoryCleanService.writeSTPkgUsageStat: insert pkg "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " power on time "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " sql "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    :goto_3
    if-eqz v8, :cond_a

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_a
    move-object v1, v12

    goto/16 :goto_0

    .end local v10           #isEmpty:Z
    :cond_b
    const/4 v10, 0x0

    goto :goto_2

    .restart local v10       #isEmpty:Z
    :cond_c
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE st_usage_table SET used_latest_time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " WHERE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    sget-boolean v1, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v1, :cond_9

    const-string v1, "SmartMemoryCleanService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SmartMemoryCleanService.writeSTPkgUsageStat: update pkg "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " power_on_time "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " sql "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .end local v10           #isEmpty:Z
    :catch_0
    move-exception v9

    .local v9, e:Ljava/lang/Exception;
    :try_start_2
    const-string v1, "SmartMemoryCleanService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SmartMemoryCleanService.writeSTPkgUsageStat: catch exception "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v1, 0x0

    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_d

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_d
    throw v1
.end method


# virtual methods
.method isSTProcessUsed(Ljava/lang/String;)Z
    .locals 5
    .parameter "pkgName"

    .prologue
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    sget-boolean v2, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v2, :cond_1

    const-string v2, "SmartMemoryCleanService"

    const-string v3, "SmartMemoryCleanService.checkPkgUsageState: invalid pkg name"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v1

    :cond_2
    iget-object v2, p0, Lcom/android/server/SmartMemoryCleanService;->mSTPkgUsage:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v2, "SmartMemoryCleanService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SmartMemoryCleanService.isSTProcessUsed: catch exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method isTrimApkStarted()Z
    .locals 3

    .prologue
    sget-boolean v0, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v0, :cond_0

    const-string v0, "SmartMemoryCleanService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmartMemoryCleanService.isTrimApkStarted: mStartTrimApk "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/SmartMemoryCleanService;->mStartTrimApk:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/SmartMemoryCleanService;->mStartTrimApk:Z

    return v0
.end method

.method public noteResumeComponent(Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessPkgResume;Ljava/util/HashSet;)Ljava/lang/String;
    .locals 9
    .parameter "stppr"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessPkgResume;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p2, visibleWidgetPkgs:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v5, 0x0

    const/4 v1, 0x0

    .local v1, pkgName:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, processName:Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, sql:Ljava/lang/String;
    if-nez p1, :cond_1

    :try_start_0
    sget-boolean v6, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v6, :cond_0

    const-string v6, "SmartMemoryCleanService"

    const-string v7, "SmartMemoryCleanService.noteResumeComponent: the pkg resumed event is invalid"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-object v5

    :cond_1
    iget-object v2, p1, Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessPkgResume;->mProcessName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessPkgResume;->mPkgName:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    sget-boolean v6, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v6, :cond_2

    const-string v6, "SmartMemoryCleanService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SmartMemoryCleanService.noteResumeComponent: pkgName: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " process "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v6, p0, Lcom/android/server/SmartMemoryCleanService;->mLastResumedPkg:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .local v3, samePackage:Z
    iput-object v1, p0, Lcom/android/server/SmartMemoryCleanService;->mLastResumedPkg:Ljava/lang/String;

    if-nez v3, :cond_5

    invoke-direct {p0, v2}, Lcom/android/server/SmartMemoryCleanService;->checkProcessAlwaysAllowStart(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    sget-boolean v6, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v6, :cond_0

    const-string v6, "SmartMemoryCleanService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SmartMemoryCleanService.noteResumeComponent:  process "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is a key process, need not statistic it."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v3           #samePackage:Z
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v6, "SmartMemoryCleanService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SmartMemoryCleanService.noteResumeComponent: catch exception "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    .restart local v3       #samePackage:Z
    :cond_3
    if-eqz p2, :cond_4

    :try_start_1
    invoke-virtual {p2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    sget-boolean v6, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v6, :cond_0

    const-string v6, "SmartMemoryCleanService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SmartMemoryCleanService.noteResumeComponent:  process "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is a visible widget, need not statistic it."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    invoke-direct {p0, v1}, Lcom/android/server/SmartMemoryCleanService;->writeSTPkgUsageStat(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    :cond_5
    move-object v5, v4

    goto/16 :goto_0
.end method

.method setAppWidgetService(Lcom/android/server/AppWidgetService;)V
    .locals 0
    .parameter "appWidget"

    .prologue
    iput-object p1, p0, Lcom/android/server/SmartMemoryCleanService;->mAppWidget:Lcom/android/server/AppWidgetService;

    return-void
.end method

.method setContext(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    iput-object p1, p0, Lcom/android/server/SmartMemoryCleanService;->mContext:Landroid/content/Context;

    return-void
.end method

.method setNotificationService(Lcom/android/server/NotificationManagerService;)V
    .locals 0
    .parameter "notification"

    .prologue
    iput-object p1, p0, Lcom/android/server/SmartMemoryCleanService;->mNotification:Lcom/android/server/NotificationManagerService;

    return-void
.end method

.method setTrimApkStarted(Z)V
    .locals 3
    .parameter "isStarted"

    .prologue
    sget-boolean v0, Lcom/android/server/SmartMemoryCleanService;->mDebugEanbled:Z

    if-eqz v0, :cond_0

    const-string v0, "SmartMemoryCleanService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmartMemoryCleanService.setStartTrimApk: isStarted "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean p1, p0, Lcom/android/server/SmartMemoryCleanService;->mStartTrimApk:Z

    return-void
.end method
