.class final Lcom/android/server/SmartMemoryCleanService$STProcessRelationRecord;
.super Ljava/lang/Object;
.source "SmartMemoryCleanService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SmartMemoryCleanService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "STProcessRelationRecord"
.end annotation


# instance fields
.field public mClient:Ljava/lang/String;

.field public mServer:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "client"
    .parameter "server"

    .prologue
    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/SmartMemoryCleanService$STProcessRelationRecord;->mClient:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/SmartMemoryCleanService$STProcessRelationRecord;->mServer:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/SmartMemoryCleanService$STProcessRelationRecord;->mClient:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/SmartMemoryCleanService$STProcessRelationRecord;->mServer:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "o"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .local v2, input:Lcom/android/server/SmartMemoryCleanService$STProcessRelationRecord;
    if-nez p1, :cond_1

    :try_start_0
    invoke-static {}, Lcom/android/server/SmartMemoryCleanService;->access$1000()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "SmartMemoryCleanService"

    const-string v5, "STProcessRelationRecord.equals: input null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v3

    :cond_1
    instance-of v4, p1, Lcom/android/server/SmartMemoryCleanService$STProcessRelationRecord;

    if-nez v4, :cond_2

    invoke-static {}, Lcom/android/server/SmartMemoryCleanService;->access$1000()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "SmartMemoryCleanService"

    const-string v5, "STProcessRelationRecord.equals: input is not STProcessRelationRecord."

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

    const-string v6, "SmartMemoryCleanService.getWriteableDatabase: catch exception "

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

    check-cast v0, Lcom/android/server/SmartMemoryCleanService$STProcessRelationRecord;

    move-object v2, v0

    iget-object v4, p0, Lcom/android/server/SmartMemoryCleanService$STProcessRelationRecord;->mClient:Ljava/lang/String;

    if-nez v4, :cond_3

    iget-object v4, v2, Lcom/android/server/SmartMemoryCleanService$STProcessRelationRecord;->mClient:Ljava/lang/String;

    if-eqz v4, :cond_5

    invoke-static {}, Lcom/android/server/SmartMemoryCleanService;->access$1000()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "SmartMemoryCleanService"

    const-string v5, "STProcessRelationRecord.equals: this has not client but input has client"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v4, v2, Lcom/android/server/SmartMemoryCleanService$STProcessRelationRecord;->mClient:Ljava/lang/String;

    if-nez v4, :cond_4

    invoke-static {}, Lcom/android/server/SmartMemoryCleanService;->access$1000()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "SmartMemoryCleanService"

    const-string v5, "STProcessRelationRecord.equals: this has client but input has not client"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/android/server/SmartMemoryCleanService$STProcessRelationRecord;->mClient:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/server/SmartMemoryCleanService$STProcessRelationRecord;->mClient:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {}, Lcom/android/server/SmartMemoryCleanService;->access$1000()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "SmartMemoryCleanService"

    const-string v5, "STProcessRelationRecord.equals: this client is not equals to the input."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/android/server/SmartMemoryCleanService$STProcessRelationRecord;->mServer:Ljava/lang/String;

    if-nez v4, :cond_6

    iget-object v4, v2, Lcom/android/server/SmartMemoryCleanService$STProcessRelationRecord;->mServer:Ljava/lang/String;

    if-eqz v4, :cond_8

    invoke-static {}, Lcom/android/server/SmartMemoryCleanService;->access$1000()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "SmartMemoryCleanService"

    const-string v5, "STProcessRelationRecord.equals: this has not server but input has server"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    iget-object v4, v2, Lcom/android/server/SmartMemoryCleanService$STProcessRelationRecord;->mClient:Ljava/lang/String;

    if-nez v4, :cond_7

    invoke-static {}, Lcom/android/server/SmartMemoryCleanService;->access$1000()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "SmartMemoryCleanService"

    const-string v5, "STProcessRelationRecord.equals: this has server but input has not server"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    iget-object v4, p0, Lcom/android/server/SmartMemoryCleanService$STProcessRelationRecord;->mServer:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/server/SmartMemoryCleanService$STProcessRelationRecord;->mServer:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-static {}, Lcom/android/server/SmartMemoryCleanService;->access$1000()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "SmartMemoryCleanService"

    const-string v5, "STProcessRelationRecord.equals: this server is not equals to the input."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_8
    const/4 v3, 0x1

    goto/16 :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .local v0, sHashCode:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/SmartMemoryCleanService$STProcessRelationRecord;->mClient:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/SmartMemoryCleanService$STProcessRelationRecord;->mServer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/SmartMemoryCleanService$STProcessRelationRecord;->mClient:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/SmartMemoryCleanService$STProcessRelationRecord;->mServer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
