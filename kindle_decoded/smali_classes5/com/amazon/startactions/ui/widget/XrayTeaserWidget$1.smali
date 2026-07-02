.class Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$1;
.super Ljava/lang/Object;
.source "XrayTeaserWidget.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/startactions/ui/widget/XrayTeaserWidget;->createView(Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$XrayMetadataQuery$Result;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/startactions/ui/widget/XrayTeaserWidget;)V
    .locals 0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$XrayMetadataQuery$Result;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 164
    new-instance v0, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$XrayMetadataQuery;

    invoke-direct {v0}, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$XrayMetadataQuery;-><init>()V

    invoke-virtual {v0}, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$XrayMetadataQuery;->load()Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$XrayMetadataQuery$Result;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 161
    invoke-virtual {p0}, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$1;->call()Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$XrayMetadataQuery$Result;

    move-result-object v0

    return-object v0
.end method
