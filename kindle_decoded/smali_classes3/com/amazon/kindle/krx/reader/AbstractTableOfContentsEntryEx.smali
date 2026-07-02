.class public abstract Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx;
.super Ljava/lang/Object;
.source "AbstractTableOfContentsEntryEx.java"

# interfaces
.implements Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx$CollapsibleState;,
        Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx$DividerLayout;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCollapsibleState()Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx$CollapsibleState;
    .locals 1

    .line 109
    sget-object v0, Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx$CollapsibleState;->UNCOLLAPSIBLE:Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx$CollapsibleState;

    return-object v0
.end method

.method public getCustomView(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getDescription(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getDividerLayout()Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx$DividerLayout;
    .locals 1

    .line 102
    sget-object v0, Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx$DividerLayout;->DEFAULT:Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx$DividerLayout;

    return-object v0
.end method

.method public getIcon(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getOnClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPageImage(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getPositionLabel(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
