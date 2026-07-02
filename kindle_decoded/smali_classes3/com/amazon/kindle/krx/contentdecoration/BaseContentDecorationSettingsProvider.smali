.class public abstract Lcom/amazon/kindle/krx/contentdecoration/BaseContentDecorationSettingsProvider;
.super Ljava/lang/Object;
.source "BaseContentDecorationSettingsProvider.java"

# interfaces
.implements Lcom/amazon/kindle/krx/ui/IContentDecorationSettingsProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdditionalLineSpacing(I)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public getAdditionalLineSpacing(II)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public getAdditionalLineSpacing(IILcom/amazon/kindle/krx/content/IBook;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getFooters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/ui/IKRXFooter;",
            ">;"
        }
    .end annotation

    .line 40
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSettings()Landroid/os/Bundle;
    .locals 1

    .line 46
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method
