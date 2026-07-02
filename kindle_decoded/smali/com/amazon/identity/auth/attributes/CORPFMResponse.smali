.class public Lcom/amazon/identity/auth/attributes/CORPFMResponse;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/attributes/CORPFMResponse$ComputationConfidenceValue;
    }
.end annotation


# instance fields
.field private final di:Ljava/lang/String;

.field private final dj:Ljava/lang/String;

.field private final dk:Ljava/lang/Long;

.field private final dl:Lcom/amazon/identity/auth/attributes/CORPFMResponse$ComputationConfidenceValue;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/attributes/CORPFMResponse$ComputationConfidenceValue;Ljava/lang/Long;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/amazon/identity/auth/attributes/CORPFMResponse;->di:Ljava/lang/String;

    .line 76
    iput-object p2, p0, Lcom/amazon/identity/auth/attributes/CORPFMResponse;->dj:Ljava/lang/String;

    .line 77
    iput-object p3, p0, Lcom/amazon/identity/auth/attributes/CORPFMResponse;->dl:Lcom/amazon/identity/auth/attributes/CORPFMResponse$ComputationConfidenceValue;

    .line 78
    iput-object p4, p0, Lcom/amazon/identity/auth/attributes/CORPFMResponse;->dk:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/amazon/identity/auth/attributes/CORPFMResponse;->di:Ljava/lang/String;

    .line 87
    iput-object p2, p0, Lcom/amazon/identity/auth/attributes/CORPFMResponse;->dj:Ljava/lang/String;

    .line 88
    sget-object p1, Lcom/amazon/identity/auth/attributes/CORPFMResponse$ComputationConfidenceValue;->CUSTOMER_PROVIDED:Lcom/amazon/identity/auth/attributes/CORPFMResponse$ComputationConfidenceValue;

    .line 89
    invoke-static {p3, p1}, Lcom/amazon/identity/auth/attributes/CORPFMResponse$ComputationConfidenceValue;->parseFromValue(Ljava/lang/String;Lcom/amazon/identity/auth/attributes/CORPFMResponse$ComputationConfidenceValue;)Lcom/amazon/identity/auth/attributes/CORPFMResponse$ComputationConfidenceValue;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/attributes/CORPFMResponse;->dl:Lcom/amazon/identity/auth/attributes/CORPFMResponse$ComputationConfidenceValue;

    .line 90
    iput-object p4, p0, Lcom/amazon/identity/auth/attributes/CORPFMResponse;->dk:Ljava/lang/Long;

    return-void
.end method

.method private an()Z
    .locals 2

    .line 135
    invoke-virtual {p0}, Lcom/amazon/identity/auth/attributes/CORPFMResponse;->am()Lcom/amazon/identity/auth/attributes/CORPFMResponse$ComputationConfidenceValue;

    move-result-object v0

    sget-object v1, Lcom/amazon/identity/auth/attributes/CORPFMResponse$ComputationConfidenceValue;->CUSTOMER_PROVIDED:Lcom/amazon/identity/auth/attributes/CORPFMResponse$ComputationConfidenceValue;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public ah()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/amazon/identity/auth/attributes/CORPFMResponse;->di:Ljava/lang/String;

    return-object v0
.end method

.method public ai()Ljava/lang/String;
    .locals 1

    .line 100
    invoke-direct {p0}, Lcom/amazon/identity/auth/attributes/CORPFMResponse;->an()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 105
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/identity/auth/attributes/CORPFMResponse;->ah()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aj()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/amazon/identity/auth/attributes/CORPFMResponse;->dj:Ljava/lang/String;

    return-object v0
.end method

.method public ak()Ljava/lang/String;
    .locals 1

    .line 115
    invoke-direct {p0}, Lcom/amazon/identity/auth/attributes/CORPFMResponse;->an()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 120
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/identity/auth/attributes/CORPFMResponse;->aj()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public al()Ljava/lang/Long;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/amazon/identity/auth/attributes/CORPFMResponse;->dk:Ljava/lang/Long;

    return-object v0
.end method

.method public am()Lcom/amazon/identity/auth/attributes/CORPFMResponse$ComputationConfidenceValue;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/amazon/identity/auth/attributes/CORPFMResponse;->dl:Lcom/amazon/identity/auth/attributes/CORPFMResponse$ComputationConfidenceValue;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 157
    const-class v2, Lcom/amazon/identity/auth/attributes/CORPFMResponse;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 162
    :cond_1
    check-cast p1, Lcom/amazon/identity/auth/attributes/CORPFMResponse;

    .line 164
    invoke-virtual {p0}, Lcom/amazon/identity/auth/attributes/CORPFMResponse;->ah()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazon/identity/auth/attributes/CORPFMResponse;->ah()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/amazon/identity/auth/attributes/CORPFMResponse;->aj()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazon/identity/auth/attributes/CORPFMResponse;->aj()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/identity/auth/attributes/CORPFMResponse;->dl:Lcom/amazon/identity/auth/attributes/CORPFMResponse$ComputationConfidenceValue;

    .line 165
    invoke-virtual {p1}, Lcom/amazon/identity/auth/attributes/CORPFMResponse;->am()Lcom/amazon/identity/auth/attributes/CORPFMResponse$ComputationConfidenceValue;

    move-result-object p1

    if-ne v2, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 143
    iget-object v0, p0, Lcom/amazon/identity/auth/attributes/CORPFMResponse;->di:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    .line 144
    iget-object v2, p0, Lcom/amazon/identity/auth/attributes/CORPFMResponse;->dj:Ljava/lang/String;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 145
    iget-object v2, p0, Lcom/amazon/identity/auth/attributes/CORPFMResponse;->dl:Lcom/amazon/identity/auth/attributes/CORPFMResponse$ComputationConfidenceValue;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method
