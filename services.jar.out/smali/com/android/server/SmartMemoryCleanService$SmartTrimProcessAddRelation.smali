.class public final Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessAddRelation;
.super Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessEvent;
.source "SmartMemoryCleanService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SmartMemoryCleanService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SmartTrimProcessAddRelation"
.end annotation


# instance fields
.field public mClientPkgList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mClientProc:Ljava/lang/String;

.field public mServerPkgList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mServerProc:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessEvent;-><init>()V

    iput-object v0, p0, Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessAddRelation;->mClientPkgList:Ljava/util/HashSet;

    iput-object v0, p0, Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessAddRelation;->mServerPkgList:Ljava/util/HashSet;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessEvent;->mEvent:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 9
    .parameter "o"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .local v3, input:Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessAddRelation;
    if-nez p1, :cond_1

    :try_start_0
    invoke-static {}, Lcom/android/server/SmartMemoryCleanService;->access$1000()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "SmartMemoryCleanService"

    const-string v7, "SmartTrimProcessAddRelation.equals: invalid input"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v5

    :cond_1
    instance-of v6, p1, Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessAddRelation;

    if-nez v6, :cond_2

    invoke-static {}, Lcom/android/server/SmartMemoryCleanService;->access$1000()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "SmartMemoryCleanService"

    const-string v7, "SmartTrimProcessAddRelation.equals: different input instance."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .local v2, e:Ljava/lang/Exception;
    const-string v6, "SmartMemoryCleanService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SmartTrimProcessAddRelation.equals: catch exception "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v2           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_1
    move-object v0, p1

    check-cast v0, Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessAddRelation;

    move-object v3, v0

    iget-object v6, v3, Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessAddRelation;->mClientProc:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessAddRelation;->mClientProc:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .local v1, clientEqual:Z
    iget-object v6, v3, Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessAddRelation;->mServerProc:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessAddRelation;->mServerProc:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .local v4, serverEqual:Z
    invoke-static {}, Lcom/android/server/SmartMemoryCleanService;->access$1000()Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "SmartMemoryCleanService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SmartTrimProcessAddRelation.equals: clientEqual "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " serverEqual "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    if-eqz v1, :cond_0

    if-eqz v4, :cond_0

    const/4 v5, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    const/4 v1, -0x1

    .local v1, hashCode:I
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessAddRelation;->mClientProc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessAddRelation;->mServerProc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, hashCodeStr:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {}, Lcom/android/server/SmartMemoryCleanService;->access$1000()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "SmartMemoryCleanService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SmartTrimProcessAddRelation.hashCode string : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " hashCode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #hashCode:I
    .end local v2           #hashCodeStr:Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .restart local v1       #hashCode:I
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v3, "SmartMemoryCleanService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SmartTrimProcessAddRelation.hashCode: catch exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SmartTrimProcessAddRelation: client "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessAddRelation;->mClientProc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mServerProc "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/SmartMemoryCleanService$SmartTrimProcessAddRelation;->mServerProc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
