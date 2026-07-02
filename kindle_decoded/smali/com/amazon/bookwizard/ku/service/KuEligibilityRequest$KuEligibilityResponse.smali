.class public Lcom/amazon/bookwizard/ku/service/KuEligibilityRequest$KuEligibilityResponse;
.super Lcom/amazon/bookwizard/ku/service/KuResponse;
.source "KuEligibilityRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/bookwizard/ku/service/KuEligibilityRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KuEligibilityResponse"
.end annotation


# instance fields
.field private code:Ljava/lang/String;

.field private status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 131
    invoke-direct {p0}, Lcom/amazon/bookwizard/ku/service/KuResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public isEligible()Z
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/amazon/bookwizard/ku/service/KuEligibilityRequest$KuEligibilityResponse;->code:Ljava/lang/String;

    const-string v1, "KLU_CUSTOMER_ELIGIBLE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 157
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/bookwizard/ku/service/KuEligibilityRequest$KuEligibilityResponse;->status:Ljava/lang/String;

    const-string v2, "STATUS"

    .line 158
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/bookwizard/ku/service/KuEligibilityRequest$KuEligibilityResponse;->code:Ljava/lang/String;

    const-string v2, "CODE"

    .line 159
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 160
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
