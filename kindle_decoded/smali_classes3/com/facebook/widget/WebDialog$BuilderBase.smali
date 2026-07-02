.class Lcom/facebook/widget/WebDialog$BuilderBase;
.super Ljava/lang/Object;
.source "WebDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/widget/WebDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BuilderBase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CONCRETE:",
        "Lcom/facebook/widget/WebDialog$BuilderBase<",
        "*>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private action:Ljava/lang/String;

.field private applicationId:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private listener:Lcom/facebook/widget/WebDialog$OnCompleteListener;

.field private parameters:Landroid/os/Bundle;

.field private session:Lcom/facebook/Session;

.field private theme:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x1030010

    .line 462
    iput v0, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->theme:I

    const-string v0, "session"

    .line 483
    invoke-static {p2, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 484
    invoke-virtual {p2}, Lcom/facebook/Session;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 487
    iput-object p2, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->session:Lcom/facebook/Session;

    .line 489
    invoke-direct {p0, p1, p3, p4}, Lcom/facebook/widget/WebDialog$BuilderBase;->finishInit(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 485
    :cond_0
    new-instance p1, Lcom/facebook/FacebookException;

    const-string p2, "Attempted to use a Session that was not open."

    invoke-direct {p1, p2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x1030010

    .line 462
    iput v0, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->theme:I

    if-nez p2, :cond_0

    .line 494
    invoke-static {p1}, Lcom/facebook/internal/Utility;->getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    const-string v0, "applicationId"

    .line 496
    invoke-static {p2, v0}, Lcom/facebook/internal/Validate;->notNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    iput-object p2, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->applicationId:Ljava/lang/String;

    .line 499
    invoke-direct {p0, p1, p3, p4}, Lcom/facebook/widget/WebDialog$BuilderBase;->finishInit(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private finishInit(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 566
    iput-object p1, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->context:Landroid/content/Context;

    .line 567
    iput-object p2, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->action:Ljava/lang/String;

    if-eqz p3, :cond_0

    .line 569
    iput-object p3, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->parameters:Landroid/os/Bundle;

    goto :goto_0

    .line 571
    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->parameters:Landroid/os/Bundle;

    :goto_0
    return-void
.end method


# virtual methods
.method public build()Lcom/facebook/widget/WebDialog;
    .locals 9

    .line 535
    iget-object v0, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->session:Lcom/facebook/Session;

    const-string v1, "app_id"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/Session;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->parameters:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->session:Lcom/facebook/Session;

    invoke-virtual {v2}, Lcom/facebook/Session;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    iget-object v0, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->parameters:Landroid/os/Bundle;

    iget-object v1, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->session:Lcom/facebook/Session;

    invoke-virtual {v1}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "access_token"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 539
    :cond_0
    iget-object v0, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->parameters:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->applicationId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    :goto_0
    new-instance v0, Lcom/facebook/widget/WebDialog;

    iget-object v4, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->action:Ljava/lang/String;

    iget-object v6, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->parameters:Landroid/os/Bundle;

    iget v7, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->theme:I

    iget-object v8, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->listener:Lcom/facebook/widget/WebDialog$OnCompleteListener;

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/facebook/widget/WebDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILcom/facebook/widget/WebDialog$OnCompleteListener;)V

    return-object v0
.end method

.method protected getApplicationId()Ljava/lang/String;
    .locals 1

    .line 546
    iget-object v0, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .line 550
    iget-object v0, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->context:Landroid/content/Context;

    return-object v0
.end method

.method protected getListener()Lcom/facebook/widget/WebDialog$OnCompleteListener;
    .locals 1

    .line 562
    iget-object v0, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->listener:Lcom/facebook/widget/WebDialog$OnCompleteListener;

    return-object v0
.end method

.method protected getParameters()Landroid/os/Bundle;
    .locals 1

    .line 558
    iget-object v0, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->parameters:Landroid/os/Bundle;

    return-object v0
.end method

.method protected getTheme()I
    .locals 1

    .line 554
    iget v0, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->theme:I

    return v0
.end method

.method public setOnCompleteListener(Lcom/facebook/widget/WebDialog$OnCompleteListener;)Lcom/facebook/widget/WebDialog$BuilderBase;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/widget/WebDialog$OnCompleteListener;",
            ")TCONCRETE;"
        }
    .end annotation

    .line 522
    iput-object p1, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->listener:Lcom/facebook/widget/WebDialog$OnCompleteListener;

    return-object p0
.end method
