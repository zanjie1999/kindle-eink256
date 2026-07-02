.class Lcom/amazon/kindle/rendering/KRIFView$KRIFLocalizationDataSource;
.super Ljava/lang/Object;
.source "KRIFView.java"

# interfaces
.implements Lcom/amazon/krf/platform/LocalizationDataSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/rendering/KRIFView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KRIFLocalizationDataSource"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field final synthetic this$0:Lcom/amazon/kindle/rendering/KRIFView;


# direct methods
.method private constructor <init>(Lcom/amazon/kindle/rendering/KRIFView;Landroid/content/Context;)V
    .locals 0

    .line 1423
    iput-object p1, p0, Lcom/amazon/kindle/rendering/KRIFView$KRIFLocalizationDataSource;->this$0:Lcom/amazon/kindle/rendering/KRIFView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1424
    iput-object p2, p0, Lcom/amazon/kindle/rendering/KRIFView$KRIFLocalizationDataSource;->context:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kindle/rendering/KRIFView;Landroid/content/Context;Lcom/amazon/kindle/rendering/KRIFView$1;)V
    .locals 0

    .line 1420
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/rendering/KRIFView$KRIFLocalizationDataSource;-><init>(Lcom/amazon/kindle/rendering/KRIFView;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getLocalizedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1429
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "Footnote %s"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_1
    const-string v0, "Footnote"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_2
    const-string v0, "XofN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_3
    const-string v0, "GoToFootnotes"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_4

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_1

    .line 1439
    invoke-static {}, Lcom/amazon/kindle/rendering/KRIFView;->access$600()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No string found with key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string p1, ""

    return-object p1

    .line 1437
    :cond_1
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFView$KRIFLocalizationDataSource;->context:Landroid/content/Context;

    sget v0, Lcom/amazon/kindle/renderingmodule/R$string;->yj_footnote_name:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1435
    :cond_2
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFView$KRIFLocalizationDataSource;->context:Landroid/content/Context;

    sget v0, Lcom/amazon/kindle/renderingmodule/R$string;->yj_goto_footnotes:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1433
    :cond_3
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFView$KRIFLocalizationDataSource;->context:Landroid/content/Context;

    sget v0, Lcom/amazon/kindle/renderingmodule/R$string;->yj_page_label:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1431
    :cond_4
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFView$KRIFLocalizationDataSource;->context:Landroid/content/Context;

    sget v0, Lcom/amazon/kindle/renderingmodule/R$string;->yj_footnotes:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x6b5ed350 -> :sswitch_3
        0x29adff -> :sswitch_2
        0x1b663980 -> :sswitch_1
        0x7cfdd38e -> :sswitch_0
    .end sparse-switch
.end method
