.class public Lcom/amazon/ku/service/KuSubscriptionInfoDownloadRequest$KuSubscriptionInfoResponse;
.super Lcom/amazon/bookwizard/service/EmptyResponse;
.source "KuSubscriptionInfoDownloadRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ku/service/KuSubscriptionInfoDownloadRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KuSubscriptionInfoResponse"
.end annotation


# instance fields
.field subscriptions:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "subscriptions"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/ku/data/KuSubscription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/amazon/bookwizard/service/EmptyResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getSubscriptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/ku/data/KuSubscription;",
            ">;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/amazon/ku/service/KuSubscriptionInfoDownloadRequest$KuSubscriptionInfoResponse;->subscriptions:Ljava/util/List;

    return-object v0
.end method
