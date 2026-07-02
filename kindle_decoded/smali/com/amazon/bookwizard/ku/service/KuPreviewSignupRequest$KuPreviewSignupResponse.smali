.class public Lcom/amazon/bookwizard/ku/service/KuPreviewSignupRequest$KuPreviewSignupResponse;
.super Lcom/amazon/bookwizard/ku/service/KuResponse;
.source "KuPreviewSignupRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/bookwizard/ku/service/KuPreviewSignupRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KuPreviewSignupResponse"
.end annotation


# instance fields
.field private code:Ljava/lang/String;

.field private error:Ljava/lang/String;

.field private link:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 125
    invoke-direct {p0}, Lcom/amazon/bookwizard/ku/service/KuResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public isSuccess()Z
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/amazon/bookwizard/ku/service/KuPreviewSignupRequest$KuPreviewSignupResponse;->status:Ljava/lang/String;

    const-string/jumbo v1, "success"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/bookwizard/ku/service/KuPreviewSignupRequest$KuPreviewSignupResponse;->code:Ljava/lang/String;

    const-string v1, "KLU_SUBSCRIBE_SUCCEEDED"

    .line 138
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/bookwizard/ku/service/KuPreviewSignupRequest$KuPreviewSignupResponse;->code:Ljava/lang/String;

    const-string v1, "KLU_ALREADY_SUBSCRIBED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 146
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/bookwizard/ku/service/KuPreviewSignupRequest$KuPreviewSignupResponse;->code:Ljava/lang/String;

    const-string v2, "CODE"

    .line 147
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/bookwizard/ku/service/KuPreviewSignupRequest$KuPreviewSignupResponse;->message:Ljava/lang/String;

    const-string v2, "MESSAGE"

    .line 148
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/bookwizard/ku/service/KuPreviewSignupRequest$KuPreviewSignupResponse;->error:Ljava/lang/String;

    const-string v2, "ERROR"

    .line 149
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/bookwizard/ku/service/KuPreviewSignupRequest$KuPreviewSignupResponse;->link:Ljava/lang/String;

    const-string v2, "LINK"

    .line 150
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 151
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
