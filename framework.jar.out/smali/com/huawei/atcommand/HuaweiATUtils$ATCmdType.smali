.class public final enum Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;
.super Ljava/lang/Enum;
.source "HuaweiATUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/atcommand/HuaweiATUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ATCmdType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;

.field public static final enum AT_CMD_ACTION:Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;

.field public static final enum AT_CMD_NONE:Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;

.field public static final enum AT_CMD_READ:Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;

.field public static final enum AT_CMD_SET:Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;

.field public static final enum AT_CMD_TEST:Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;


# instance fields
.field private mCmdType:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;

    const-string v1, "AT_CMD_NONE"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;->AT_CMD_NONE:Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;

    new-instance v0, Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;

    const-string v1, "AT_CMD_ACTION"

    invoke-direct {v0, v1, v4, v3}, Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;->AT_CMD_ACTION:Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;

    new-instance v0, Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;

    const-string v1, "AT_CMD_SET"

    invoke-direct {v0, v1, v5, v4}, Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;->AT_CMD_SET:Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;

    new-instance v0, Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;

    const-string v1, "AT_CMD_READ"

    invoke-direct {v0, v1, v6, v5}, Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;->AT_CMD_READ:Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;

    new-instance v0, Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;

    const-string v1, "AT_CMD_TEST"

    invoke-direct {v0, v1, v7, v6}, Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;->AT_CMD_TEST:Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;

    sget-object v1, Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;->AT_CMD_NONE:Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;->AT_CMD_ACTION:Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;->AT_CMD_SET:Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;->AT_CMD_READ:Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;->AT_CMD_TEST:Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;->$VALUES:[Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;->mCmdType:I

    return-void
.end method

.method public static fromInt(I)Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;
    .locals 5
    .parameter "type"

    .prologue
    invoke-static {}, Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;->values()[Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;

    move-result-object v0

    .local v0, arr$:[Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .local v3, r:Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;
    iget v4, v3, Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;->mCmdType:I

    if-ne v4, p0, :cond_0

    .end local v3           #r:Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;
    :goto_1
    return-object v3

    .restart local v3       #r:Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v3           #r:Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;
    .locals 1
    .parameter "name"

    .prologue
    const-class v0, Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;

    return-object v0
.end method

.method public static values()[Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;
    .locals 1

    .prologue
    sget-object v0, Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;->$VALUES:[Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;

    invoke-virtual {v0}, [Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;->mCmdType:I

    return v0
.end method
