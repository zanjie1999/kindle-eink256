.class public Lcom/amazon/whispersync/SubscriptionType;
.super Ljava/lang/Object;
.source "SubscriptionType.java"


# static fields
.field public static final S2DM:Ljava/lang/String; = "S2DM"

.field private static final values:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "S2DM"

    .line 9
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/SubscriptionType;->values:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static values()[Ljava/lang/String;
    .locals 1

    .line 14
    sget-object v0, Lcom/amazon/whispersync/SubscriptionType;->values:[Ljava/lang/String;

    return-object v0
.end method
