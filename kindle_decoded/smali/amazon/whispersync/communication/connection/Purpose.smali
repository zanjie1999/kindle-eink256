.class public final Lamazon/whispersync/communication/connection/Purpose;
.super Ljava/lang/Object;
.source "Purpose.java"


# static fields
.field public static final REGULAR:Lamazon/whispersync/communication/connection/Purpose;


# instance fields
.field private final mPurpose:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    new-instance v0, Lamazon/whispersync/communication/connection/Purpose;

    const-string v1, "Regular"

    invoke-direct {v0, v1}, Lamazon/whispersync/communication/connection/Purpose;-><init>(Ljava/lang/String;)V

    sput-object v0, Lamazon/whispersync/communication/connection/Purpose;->REGULAR:Lamazon/whispersync/communication/connection/Purpose;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 33
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    iput-object p1, p0, Lamazon/whispersync/communication/connection/Purpose;->mPurpose:Ljava/lang/String;

    return-void

    .line 34
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "purpose must not be empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 59
    instance-of v0, p1, Lamazon/whispersync/communication/connection/Purpose;

    if-nez v0, :cond_1

    goto :goto_0

    .line 63
    :cond_1
    check-cast p1, Lamazon/whispersync/communication/connection/Purpose;

    .line 64
    iget-object v0, p0, Lamazon/whispersync/communication/connection/Purpose;->mPurpose:Ljava/lang/String;

    iget-object p1, p1, Lamazon/whispersync/communication/connection/Purpose;->mPurpose:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getPurpose()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lamazon/whispersync/communication/connection/Purpose;->mPurpose:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 51
    iget-object v0, p0, Lamazon/whispersync/communication/connection/Purpose;->mPurpose:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lamazon/whispersync/communication/connection/Purpose;->mPurpose:Ljava/lang/String;

    return-object v0
.end method
