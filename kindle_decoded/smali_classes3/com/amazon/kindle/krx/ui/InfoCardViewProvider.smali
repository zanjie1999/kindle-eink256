.class public Lcom/amazon/kindle/krx/ui/InfoCardViewProvider;
.super Ljava/lang/Object;
.source "InfoCardViewProvider.java"

# interfaces
.implements Lcom/amazon/kindle/krx/providers/ISortableProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/krx/ui/InfoCardViewProvider$InfoCardViewProviderWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/krx/providers/ISortableProvider<",
        "Lcom/amazon/kindle/krx/ui/AbstractKRXInfoCardItem;",
        "Lcom/amazon/kindle/krx/content/IContentSelection;",
        ">;"
    }
.end annotation


# instance fields
.field private infoCardViewProvider:Lcom/amazon/kindle/krx/ui/InfoCardViewProvider$InfoCardViewProviderWrapper;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/providers/ISortableProvider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/providers/ISortableProvider<",
            "Lcom/amazon/kindle/krx/ui/InfoCardView;",
            "Lcom/amazon/kindle/krx/content/IContentSelection;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/amazon/kindle/krx/ui/InfoCardViewProvider$InfoCardViewProviderWrapper;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kindle/krx/ui/InfoCardViewProvider$InfoCardViewProviderWrapper;-><init>(Lcom/amazon/kindle/krx/ui/InfoCardViewProvider;Lcom/amazon/kindle/krx/providers/ISortableProvider;)V

    iput-object v0, p0, Lcom/amazon/kindle/krx/ui/InfoCardViewProvider;->infoCardViewProvider:Lcom/amazon/kindle/krx/ui/InfoCardViewProvider$InfoCardViewProviderWrapper;

    return-void
.end method


# virtual methods
.method public get(Lcom/amazon/kindle/krx/content/IContentSelection;)Lcom/amazon/kindle/krx/ui/AbstractKRXInfoCardItem;
    .locals 0

    .line 33
    iget-object p1, p0, Lcom/amazon/kindle/krx/ui/InfoCardViewProvider;->infoCardViewProvider:Lcom/amazon/kindle/krx/ui/InfoCardViewProvider$InfoCardViewProviderWrapper;

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 15
    check-cast p1, Lcom/amazon/kindle/krx/content/IContentSelection;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/krx/ui/InfoCardViewProvider;->get(Lcom/amazon/kindle/krx/content/IContentSelection;)Lcom/amazon/kindle/krx/ui/AbstractKRXInfoCardItem;

    move-result-object p1

    return-object p1
.end method

.method public getPriority(Lcom/amazon/kindle/krx/content/IContentSelection;)I
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/InfoCardViewProvider;->infoCardViewProvider:Lcom/amazon/kindle/krx/ui/InfoCardViewProvider$InfoCardViewProviderWrapper;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/krx/ui/InfoCardViewProvider$InfoCardViewProviderWrapper;->getPriority(Lcom/amazon/kindle/krx/content/IContentSelection;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getPriority(Ljava/lang/Object;)I
    .locals 0

    .line 15
    check-cast p1, Lcom/amazon/kindle/krx/content/IContentSelection;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/krx/ui/InfoCardViewProvider;->getPriority(Lcom/amazon/kindle/krx/content/IContentSelection;)I

    move-result p1

    return p1
.end method
