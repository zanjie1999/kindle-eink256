.class public Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/Iso8601TimeConverter;
.super Ljava/lang/Object;
.source "Iso8601TimeConverter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertDurationToMs(Ljava/lang/String;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 13
    :cond_0
    invoke-static {p0}, Lorg/threeten/bp/Duration;->parse(Ljava/lang/CharSequence;)Lorg/threeten/bp/Duration;

    move-result-object p0

    .line 14
    invoke-virtual {p0}, Lorg/threeten/bp/Duration;->toMillis()J

    move-result-wide v0

    return-wide v0
.end method
