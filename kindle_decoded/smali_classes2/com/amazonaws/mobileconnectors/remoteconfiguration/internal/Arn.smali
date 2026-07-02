.class public Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/Arn;
.super Ljava/lang/Object;
.source "Arn.java"


# instance fields
.field private final account:Ljava/lang/String;

.field private final id:Ljava/lang/String;

.field private final region:Ljava/lang/String;

.field private final type:Ljava/lang/String;

.field private final vendor:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/Arn;->vendor:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/Arn;->region:Ljava/lang/String;

    .line 13
    iput-object p3, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/Arn;->account:Ljava/lang/String;

    .line 14
    iput-object p4, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/Arn;->type:Ljava/lang/String;

    .line 15
    iput-object p5, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/Arn;->id:Ljava/lang/String;

    return-void
.end method

.method public static fromArn(Ljava/lang/String;)Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/Arn;
    .locals 9

    const/4 v0, 0x6

    const-string v1, ":"

    .line 19
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 20
    array-length v1, p0

    if-ne v1, v0, :cond_0

    const/4 v0, 0x5

    .line 23
    aget-object v0, p0, v0

    const/4 v1, 0x2

    const-string v2, "[:/]"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 24
    new-instance v8, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/Arn;

    aget-object v3, p0, v1

    const/4 v1, 0x3

    aget-object v4, p0, v1

    const/4 v1, 0x4

    aget-object v5, p0, v1

    const/4 p0, 0x0

    aget-object v6, v0, p0

    const/4 p0, 0x1

    aget-object v7, v0, p0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/Arn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v8

    .line 21
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid ARN"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
