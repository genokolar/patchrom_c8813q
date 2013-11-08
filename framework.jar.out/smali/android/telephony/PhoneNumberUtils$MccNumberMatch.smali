.class Landroid/telephony/PhoneNumberUtils$MccNumberMatch;
.super Ljava/lang/Object;
.source "PhoneNumberUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/PhoneNumberUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MccNumberMatch"
.end annotation


# instance fields
.field private mCc:Ljava/lang/String;

.field private mIdd:Ljava/lang/String;

.field private mMcc:I

.field private mNdd:Ljava/lang/String;

.field private mSpcs:[Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "mcc"
    .parameter "idd"
    .parameter "cc"
    .parameter "ndd"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/PhoneNumberUtils$MccNumberMatch;->mMcc:I

    iput-object p2, p0, Landroid/telephony/PhoneNumberUtils$MccNumberMatch;->mIdd:Ljava/lang/String;

    iput-object p3, p0, Landroid/telephony/PhoneNumberUtils$MccNumberMatch;->mCc:Ljava/lang/String;

    iput-object p4, p0, Landroid/telephony/PhoneNumberUtils$MccNumberMatch;->mNdd:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "mcc"
    .parameter "idd"
    .parameter "cc"
    .parameter "ndd"
    .parameter "spcList"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/PhoneNumberUtils$MccNumberMatch;->mMcc:I

    iput-object p2, p0, Landroid/telephony/PhoneNumberUtils$MccNumberMatch;->mIdd:Ljava/lang/String;

    iput-object p3, p0, Landroid/telephony/PhoneNumberUtils$MccNumberMatch;->mCc:Ljava/lang/String;

    iput-object p4, p0, Landroid/telephony/PhoneNumberUtils$MccNumberMatch;->mNdd:Ljava/lang/String;

    if-eqz p5, :cond_0

    const-string v0, ","

    invoke-virtual {p5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/PhoneNumberUtils$MccNumberMatch;->mSpcs:[Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public getCc()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/telephony/PhoneNumberUtils$MccNumberMatch;->mCc:Ljava/lang/String;

    return-object v0
.end method

.method public getIdd()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/telephony/PhoneNumberUtils$MccNumberMatch;->mIdd:Ljava/lang/String;

    return-object v0
.end method

.method public getMcc()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/telephony/PhoneNumberUtils$MccNumberMatch;->mMcc:I

    return v0
.end method

.method public getNdd()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/telephony/PhoneNumberUtils$MccNumberMatch;->mNdd:Ljava/lang/String;

    return-object v0
.end method

.method public getSpcs()[Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/telephony/PhoneNumberUtils$MccNumberMatch;->mSpcs:[Ljava/lang/String;

    return-object v0
.end method
