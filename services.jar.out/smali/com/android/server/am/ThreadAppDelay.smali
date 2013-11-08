.class Lcom/android/server/am/ThreadAppDelay;
.super Ljava/lang/Thread;
.source "ActivityManagerService.java"


# instance fields
.field private m_ams:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0
    .parameter "ams"

    .prologue
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ThreadAppDelay;->m_ams:Lcom/android/server/am/ActivityManagerService;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const-wide/16 v5, 0x7d0

    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    iget-object v6, p0, Lcom/android/server/am/ThreadAppDelay;->m_ams:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    :try_start_1
    iget-object v5, p0, Lcom/android/server/am/ThreadAppDelay;->m_ams:Lcom/android/server/am/ActivityManagerService;

    iget v5, v5, Lcom/android/server/am/ActivityManagerService;->mFactoryTest:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v7, 0x1

    if-eq v5, v7, :cond_1

    :try_start_2
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    const/16 v7, 0x400

    invoke-interface {v5, v7}, Landroid/content/pm/IPackageManager;->getPersistentApplications(I)Ljava/util/List;

    move-result-object v1

    .local v1, apps:Ljava/util/List;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .local v3, info:Landroid/content/pm/ApplicationInfo;
    if-eqz v3, :cond_0

    iget-object v5, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v7, "android"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/server/am/ThreadAppDelay;->m_ams:Lcom/android/server/am/ActivityManagerService;

    const/4 v7, 0x0

    invoke-virtual {v5, v3, v7}, Lcom/android/server/am/ActivityManagerService;->addAppLocked(Landroid/content/pm/ApplicationInfo;Z)Lcom/android/server/am/ProcessRecord;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0           #N:I
    .end local v1           #apps:Ljava/util/List;
    .end local v2           #i:I
    .end local v3           #info:Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v5

    :cond_1
    :try_start_3
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/pm/IPackageManager;->hasSystemUidErrors()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .local v4, msg:Landroid/os/Message;
    const/16 v5, 0xe

    iput v5, v4, Landroid/os/Message;->what:I

    iget-object v5, p0, Lcom/android/server/am/ThreadAppDelay;->m_ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .end local v4           #msg:Landroid/os/Message;
    :cond_2
    :goto_2
    :try_start_4
    monitor-exit v6

    return-void

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    :catch_1
    move-exception v5

    goto :goto_0

    :catch_2
    move-exception v5

    goto :goto_2
.end method
