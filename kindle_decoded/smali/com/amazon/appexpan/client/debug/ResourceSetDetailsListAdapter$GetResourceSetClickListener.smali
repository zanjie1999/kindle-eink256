.class Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter$GetResourceSetClickListener;
.super Ljava/lang/Object;
.source "ResourceSetDetailsListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetResourceSetClickListener"
.end annotation


# instance fields
.field private final resourceSet:Lcom/amazon/appexpan/client/model/ResourceSetModel;


# direct methods
.method constructor <init>(Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter;Lcom/amazon/appexpan/client/model/ResourceSetModel;)V
    .locals 0

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    iput-object p2, p0, Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter$GetResourceSetClickListener;->resourceSet:Lcom/amazon/appexpan/client/model/ResourceSetModel;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 256
    invoke-static {}, Lcom/amazon/appexpan/client/AppExpanClient;->getInstance()Lcom/amazon/appexpan/client/AppExpanClient;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter$GetResourceSetClickListener;->resourceSet:Lcom/amazon/appexpan/client/model/ResourceSetModel;

    invoke-virtual {v1}, Lcom/amazon/appexpan/client/model/ResourceSetModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/appexpan/client/AppExpanClient;->getResourceSet(Ljava/lang/String;)Lcom/amazon/appexpan/client/ResourceSetResponse;

    move-result-object v0

    .line 258
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 263
    :cond_0
    sget v1, Lcom/amazon/appexpan/client/R$id;->debug_download_get_resource_set_result:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 264
    invoke-virtual {v0}, Lcom/amazon/appexpan/client/ResourceSetResponse;->getFailureReason()Lcom/amazon/appexpan/client/ResourceSetResponse$FailureReason;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/amazon/appexpan/client/ResourceSetResponse;->getFailureReason()Lcom/amazon/appexpan/client/ResourceSetResponse$FailureReason;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 266
    invoke-virtual {v0}, Lcom/amazon/appexpan/client/ResourceSetResponse;->getFailureReason()Lcom/amazon/appexpan/client/ResourceSetResponse$FailureReason;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 268
    invoke-virtual {v0}, Lcom/amazon/appexpan/client/ResourceSetResponse;->getResourceSet()Lcom/amazon/appexpan/client/ResourceSet;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazon/appexpan/client/ResourceSetResponse;->getResourceSet()Lcom/amazon/appexpan/client/ResourceSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/appexpan/client/ResourceSet;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/amazon/appexpan/client/ResourceSetResponse;->getResourceSet()Lcom/amazon/appexpan/client/ResourceSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/appexpan/client/ResourceSet;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " has been successfully acquired."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const-string v0, "Error, null value"

    .line 274
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
