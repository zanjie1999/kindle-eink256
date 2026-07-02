.class Lcom/amazon/kindle/panels/PopularHighlightsPanelItem$SimpleTextComponent;
.super Ljava/lang/Object;
.source "PopularHighlightsPanelItem.java"

# interfaces
.implements Lcom/amazon/kindle/krx/ui/panels/ITextPanelComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/panels/PopularHighlightsPanelItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimpleTextComponent"
.end annotation


# instance fields
.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-object p1, p0, Lcom/amazon/kindle/panels/PopularHighlightsPanelItem$SimpleTextComponent;->title:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getSecondaryText()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/amazon/kindle/panels/PopularHighlightsPanelItem$SimpleTextComponent;->title:Ljava/lang/String;

    return-object v0
.end method

.method public onClick()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
