.class Lcom/amazon/kindle/krx/ui/InfoCardViewProvider$InfoCardViewProviderWrapper;
.super Lcom/amazon/kindle/krx/ui/AbstractKRXInfoCardItem;
.source "InfoCardViewProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/krx/ui/InfoCardViewProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InfoCardViewProviderWrapper"
.end annotation


# instance fields
.field provider:Lcom/amazon/kindle/krx/providers/ISortableProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/krx/providers/ISortableProvider<",
            "Lcom/amazon/kindle/krx/ui/InfoCardView;",
            "Lcom/amazon/kindle/krx/content/IContentSelection;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/amazon/kindle/krx/ui/InfoCardViewProvider;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/ui/InfoCardViewProvider;Lcom/amazon/kindle/krx/providers/ISortableProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/providers/ISortableProvider<",
            "Lcom/amazon/kindle/krx/ui/InfoCardView;",
            "Lcom/amazon/kindle/krx/content/IContentSelection;",
            ">;)V"
        }
    .end annotation

    .line 55
    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/InfoCardViewProvider$InfoCardViewProviderWrapper;->this$0:Lcom/amazon/kindle/krx/ui/InfoCardViewProvider;

    invoke-direct {p0}, Lcom/amazon/kindle/krx/ui/AbstractKRXInfoCardItem;-><init>()V

    .line 56
    iput-object p2, p0, Lcom/amazon/kindle/krx/ui/InfoCardViewProvider$InfoCardViewProviderWrapper;->provider:Lcom/amazon/kindle/krx/providers/ISortableProvider;

    return-void
.end method


# virtual methods
.method public getInfoCardView(Landroid/content/Context;Lcom/amazon/kindle/krx/content/IContentSelection;)Lcom/amazon/kindle/krx/ui/InfoCardView;
    .locals 0

    .line 71
    iget-object p1, p0, Lcom/amazon/kindle/krx/ui/InfoCardViewProvider$InfoCardViewProviderWrapper;->provider:Lcom/amazon/kindle/krx/providers/ISortableProvider;

    invoke-interface {p1, p2}, Lcom/amazon/kindle/krx/providers/IProvider;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/krx/ui/InfoCardView;

    return-object p1
.end method

.method public getPriority(Lcom/amazon/kindle/krx/content/IContentSelection;)I
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/InfoCardViewProvider$InfoCardViewProviderWrapper;->provider:Lcom/amazon/kindle/krx/providers/ISortableProvider;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/providers/ISortableProvider;->getPriority(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
