.class public Lcom/amazon/kindle/krx/ui/panels/SimpleTextPanelComponent;
.super Ljava/lang/Object;
.source "SimpleTextPanelComponent.java"

# interfaces
.implements Lcom/amazon/kindle/krx/ui/panels/ITextPanelComponent;


# instance fields
.field private final secondaryText:Ljava/lang/String;

.field private final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/krx/ui/panels/SimpleTextPanelComponent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/panels/SimpleTextPanelComponent;->text:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/amazon/kindle/krx/ui/panels/SimpleTextPanelComponent;->secondaryText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getSecondaryText()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/panels/SimpleTextPanelComponent;->secondaryText:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/panels/SimpleTextPanelComponent;->text:Ljava/lang/String;

    return-object v0
.end method

.method public onClick()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
