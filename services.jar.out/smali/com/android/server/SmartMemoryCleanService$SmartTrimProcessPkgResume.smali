.class public final Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessPkgResume;
.super Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessEvent;
.source "SmartMemoryCleanService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SmartMemoryCleanService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SmartTrimProcessPkgResume"
.end annotation


# instance fields
.field public mPkgName:Ljava/lang/String;

.field public mProcessName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessEvent;-><init>()V

    iput-object v0, p0, Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessPkgResume;->mProcessName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessPkgResume;->mPkgName:Ljava/lang/String;

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessEvent;->mEvent:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "sPkg"
    .parameter "processName"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessEvent;-><init>()V

    iput-object v0, p0, Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessPkgResume;->mProcessName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessPkgResume;->mPkgName:Ljava/lang/String;

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessEvent;->mEvent:I

    iput-object p1, p0, Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessPkgResume;->mPkgName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessPkgResume;->mProcessName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "o"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .local v2, input:Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessPkgResume;
    if-nez p1, :cond_1

    :try_start_0
    invoke-static {}, Lcom/android/server/SmartMemoryCleanService;->access$1000()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "SmartMemoryCleanService"

    const-string v5, "SmartTrimProcessPkgResume.equals: invalid input"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v3

    :cond_1
    instance-of v4, p1, Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessPkgResume;

    if-nez v4, :cond_2

    invoke-static {}, Lcom/android/server/SmartMemoryCleanService;->access$1000()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "SmartMemoryCleanService"

    const-string v5, "SmartTrimProcessPkgResume.equals: different input instance."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    const-string v4, "SmartMemoryCleanService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SmartTrimProcessPkgResume.equals: catch exception "

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
    move-object v0, p1

    check-cast v0, Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessPkgResume;

    move-object v2, v0

    iget-object v4, v2, Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessPkgResume;->mProcessName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessPkgResume;->mProcessName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {}, Lcom/android/server/SmartMemoryCleanService;->access$1000()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "SmartMemoryCleanService"

    const-string v5, "SmartTrimProcessPkgResume.equals: different process."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v4, v2, Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessPkgResume;->mPkgName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessPkgResume;->mPkgName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {}, Lcom/android/server/SmartMemoryCleanService;->access$1000()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "SmartMemoryCleanService"

    const-string v5, "SmartTrimProcessPkgResume.equals: different process."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_4
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    const/4 v2, -0x1

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessPkgResume;->mProcessName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessPkgResume;->mPkgName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, sHashCode:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .end local v1           #sHashCode:Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v3, "SmartMemoryCleanService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SmartTrimProcessPkgResume.hashCode: catch exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SmartTrimProcessPkgResume:\n pkg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessPkgResume;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n process name : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessPkgResume;->mProcessName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
