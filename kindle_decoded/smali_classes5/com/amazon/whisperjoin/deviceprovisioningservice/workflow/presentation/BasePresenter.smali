.class public abstract Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/BasePresenter;
.super Ljava/lang/Object;
.source "BasePresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "TV;>;"
    }
.end annotation


# instance fields
.field protected mView:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public attachView(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/BasePresenter;->mView:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 18
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/BasePresenter;->mView:Ljava/lang/Object;

    return-void

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "View already attached!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public detachView()V
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/BasePresenter;->mView:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/BasePresenter;->mView:Ljava/lang/Object;

    return-void

    .line 24
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No view attached!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
