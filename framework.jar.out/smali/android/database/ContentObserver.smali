.class public abstract Landroid/database/ContentObserver;
.super Ljava/lang/Object;
.source "ContentObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/ContentObserver$Transport;,
        Landroid/database/ContentObserver$NotificationRunnable;
    }
.end annotation


# instance fields
.field mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mTransport:Landroid/database/ContentObserver$Transport;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .parameter "handler"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/database/ContentObserver;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Landroid/database/ContentObserver;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public final dispatchChange(Z)V
    .locals 1
    .parameter "selfChange"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/database/ContentObserver;->dispatchChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public final dispatchChange(ZLandroid/net/Uri;)V
    .locals 2
    .parameter "selfChange"
    .parameter "uri"

    .prologue
    iget-object v0, p0, Landroid/database/ContentObserver;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/database/ContentObserver;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/database/ContentObserver$NotificationRunnable;

    invoke-direct {v1, p0, p1, p2}, Landroid/database/ContentObserver$NotificationRunnable;-><init>(Landroid/database/ContentObserver;ZLandroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public getContentObserver()Landroid/database/IContentObserver;
    .locals 2

    .prologue
    iget-object v1, p0, Landroid/database/ContentObserver;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/database/ContentObserver;->mTransport:Landroid/database/ContentObserver$Transport;

    if-nez v0, :cond_0

    new-instance v0, Landroid/database/ContentObserver$Transport;

    invoke-direct {v0, p0}, Landroid/database/ContentObserver$Transport;-><init>(Landroid/database/ContentObserver;)V

    iput-object v0, p0, Landroid/database/ContentObserver;->mTransport:Landroid/database/ContentObserver$Transport;

    :cond_0
    iget-object v0, p0, Landroid/database/ContentObserver;->mTransport:Landroid/database/ContentObserver$Transport;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onChange(Z)V
    .locals 0
    .parameter "selfChange"

    .prologue
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0
    .parameter "selfChange"
    .parameter "uri"

    .prologue
    invoke-virtual {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    return-void
.end method

.method public releaseContentObserver()Landroid/database/IContentObserver;
    .locals 3

    .prologue
    iget-object v2, p0, Landroid/database/ContentObserver;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Landroid/database/ContentObserver;->mTransport:Landroid/database/ContentObserver$Transport;

    .local v0, oldTransport:Landroid/database/ContentObserver$Transport;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/database/ContentObserver$Transport;->releaseContentObserver()V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/database/ContentObserver;->mTransport:Landroid/database/ContentObserver$Transport;

    :cond_0
    monitor-exit v2

    return-object v0

    .end local v0           #oldTransport:Landroid/database/ContentObserver$Transport;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
