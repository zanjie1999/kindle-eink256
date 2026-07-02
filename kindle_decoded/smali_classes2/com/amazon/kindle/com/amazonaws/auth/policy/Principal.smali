.class public Lcom/amazon/kindle/com/amazonaws/auth/policy/Principal;
.super Ljava/lang/Object;
.source "Principal.java"


# static fields
.field public static final All:Lcom/amazon/kindle/com/amazonaws/auth/policy/Principal;

.field public static final AllUsers:Lcom/amazon/kindle/com/amazonaws/auth/policy/Principal;


# instance fields
.field private final id:Ljava/lang/String;

.field private final provider:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 43
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/auth/policy/Principal;

    const-string v1, "*"

    const-string v2, "AWS"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/com/amazonaws/auth/policy/Principal;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/auth/policy/Principal;->AllUsers:Lcom/amazon/kindle/com/amazonaws/auth/policy/Principal;

    .line 49
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/auth/policy/Principal;

    const-string v2, "Service"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/com/amazonaws/auth/policy/Principal;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/auth/policy/Principal;

    const-string v2, "Federated"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/com/amazonaws/auth/policy/Principal;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/auth/policy/Principal;

    invoke-direct {v0, v1, v1}, Lcom/amazon/kindle/com/amazonaws/auth/policy/Principal;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/auth/policy/Principal;->All:Lcom/amazon/kindle/com/amazonaws/auth/policy/Principal;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/auth/policy/Principal;->provider:Ljava/lang/String;

    const-string v0, "AWS"

    .line 89
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "-"

    const-string v0, ""

    .line 90
    invoke-virtual {p2, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 92
    :cond_0
    iput-object p2, p0, Lcom/amazon/kindle/com/amazonaws/auth/policy/Principal;->id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 271
    :cond_1
    instance-of v2, p1, Lcom/amazon/kindle/com/amazonaws/auth/policy/Principal;

    if-nez v2, :cond_2

    return v1

    .line 275
    :cond_2
    check-cast p1, Lcom/amazon/kindle/com/amazonaws/auth/policy/Principal;

    .line 277
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/auth/policy/Principal;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/auth/policy/Principal;->getProvider()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 278
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/auth/policy/Principal;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/auth/policy/Principal;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v0

    :cond_3
    return v1
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/auth/policy/Principal;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/auth/policy/Principal;->provider:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 256
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/auth/policy/Principal;->provider:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 257
    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/auth/policy/Principal;->id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
