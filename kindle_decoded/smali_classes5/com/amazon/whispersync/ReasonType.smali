.class public Lcom/amazon/whispersync/ReasonType;
.super Ljava/lang/Object;
.source "ReasonType.java"


# static fields
.field public static final AntiEntropy:Ljava/lang/String; = "AntiEntropy"

.field public static final Bootstrap:Ljava/lang/String; = "Bootstrap"

.field public static final ClientInitiated:Ljava/lang/String; = "ClientInitiated"

.field public static final S2DMPoll:Ljava/lang/String; = "S2DMPoll"

.field public static final S2DMPush:Ljava/lang/String; = "S2DMPush"

.field private static final values:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "S2DMPush"

    const-string v1, "S2DMPoll"

    const-string v2, "Bootstrap"

    const-string v3, "AntiEntropy"

    const-string v4, "ClientInitiated"

    .line 13
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/ReasonType;->values:[Ljava/lang/String;

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

    .line 18
    sget-object v0, Lcom/amazon/whispersync/ReasonType;->values:[Ljava/lang/String;

    return-object v0
.end method
