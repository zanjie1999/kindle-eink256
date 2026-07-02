.class public Lcom/amazon/whispersync/dcp/framework/InternalDocumentationScreen;
.super Landroid/app/Activity;
.source "InternalDocumentationScreen.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private populateDocumentationTextView()V
    .locals 4

    .line 30
    sget v0, Lcom/amazon/whispersync/dcp/framework/R$id;->internalDocsText:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 32
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    sget v2, Lcom/amazon/whispersync/dcp/framework/R$string;->invalid_doc_txt:I

    const-string v3, "com.amazon.whispersync.dcp.internal.documentation.string.resource.id"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 35
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 37
    sget v0, Lcom/amazon/whispersync/dcp/framework/R$id;->errorMessage:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 39
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.amazon.whispersync.dcp.internal.documentation.string.resource.message"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 13
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    sget p1, Lcom/amazon/whispersync/dcp/framework/R$layout;->internal_documentation:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 17
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/InternalDocumentationScreen;->populateDocumentationTextView()V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 23
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 25
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/InternalDocumentationScreen;->populateDocumentationTextView()V

    return-void
.end method
