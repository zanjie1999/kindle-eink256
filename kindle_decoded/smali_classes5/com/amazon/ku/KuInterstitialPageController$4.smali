.class Lcom/amazon/ku/KuInterstitialPageController$4;
.super Ljava/lang/Object;
.source "KuInterstitialPageController.java"

# interfaces
.implements Lcom/amazon/bookwizard/ku/service/KuSignupRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ku/KuInterstitialPageController;->subscribe()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ku/KuInterstitialPageController;


# direct methods
.method constructor <init>(Lcom/amazon/ku/KuInterstitialPageController;)V
    .locals 0

    .line 515
    iput-object p1, p0, Lcom/amazon/ku/KuInterstitialPageController$4;->this$0:Lcom/amazon/ku/KuInterstitialPageController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/android/volley/VolleyError;)V
    .locals 1

    .line 521
    iget-object p1, p0, Lcom/amazon/ku/KuInterstitialPageController$4;->this$0:Lcom/amazon/ku/KuInterstitialPageController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/amazon/ku/KuInterstitialPageController;->access$1000(Lcom/amazon/ku/KuInterstitialPageController;Z)V

    return-void
.end method

.method public onSuccess(Lcom/amazon/bookwizard/ku/service/KuSignupRequest$KuSignupResponse;)V
    .locals 1

    .line 517
    iget-object p1, p0, Lcom/amazon/ku/KuInterstitialPageController$4;->this$0:Lcom/amazon/ku/KuInterstitialPageController;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/amazon/ku/KuInterstitialPageController;->access$1000(Lcom/amazon/ku/KuInterstitialPageController;Z)V

    return-void
.end method
