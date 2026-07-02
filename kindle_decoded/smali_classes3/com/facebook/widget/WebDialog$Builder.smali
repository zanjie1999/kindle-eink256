.class public Lcom/facebook/widget/WebDialog$Builder;
.super Lcom/facebook/widget/WebDialog$BuilderBase;
.source "WebDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/widget/WebDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/widget/WebDialog$BuilderBase<",
        "Lcom/facebook/widget/WebDialog$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 616
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/widget/WebDialog$BuilderBase;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic getApplicationId()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/facebook/widget/WebDialog$BuilderBase;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getContext()Landroid/content/Context;
    .locals 1

    invoke-super {p0}, Lcom/facebook/widget/WebDialog$BuilderBase;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getListener()Lcom/facebook/widget/WebDialog$OnCompleteListener;
    .locals 1

    invoke-super {p0}, Lcom/facebook/widget/WebDialog$BuilderBase;->getListener()Lcom/facebook/widget/WebDialog$OnCompleteListener;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getParameters()Landroid/os/Bundle;
    .locals 1

    invoke-super {p0}, Lcom/facebook/widget/WebDialog$BuilderBase;->getParameters()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getTheme()I
    .locals 1

    invoke-super {p0}, Lcom/facebook/widget/WebDialog$BuilderBase;->getTheme()I

    move-result v0

    return v0
.end method
