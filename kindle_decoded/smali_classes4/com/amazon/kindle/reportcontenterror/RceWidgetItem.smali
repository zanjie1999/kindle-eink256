.class public Lcom/amazon/kindle/reportcontenterror/RceWidgetItem;
.super Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;
.source "RceWidgetItem.java"

# interfaces
.implements Lcom/amazon/kindle/krx/providers/IProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem<",
        "Lcom/amazon/kindle/krx/content/IContentSelection;",
        ">;",
        "Lcom/amazon/kindle/krx/providers/IProvider<",
        "Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem<",
        "Lcom/amazon/kindle/krx/content/IContentSelection;",
        ">;",
        "Lcom/amazon/kindle/krx/content/IContentSelection;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_FORMAT:Ljava/lang/String; = "ASIN_KEY: %s ; Selection: %s ; Positions: %d - %d"

.field private static final LOG_TAG:Ljava/lang/String; = "com.amazon.kindle.reportcontenterror.RceWidgetItem"

.field private static final PROVIDER_PRIORITY:I = 0xc8

.field private static final REPORT_CONTENT_ERROR_WIDGET_KEY:Ljava/lang/String; = "REPORT_CONTENT_ERROR_WIDGET_KEY"


# instance fields
.field private final readerSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/amazon/kindle/reportcontenterror/RceWidgetItem;->readerSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-void
.end method


# virtual methods
.method public get(Lcom/amazon/kindle/krx/content/IContentSelection;)Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/content/IContentSelection;",
            ")",
            "Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem<",
            "Lcom/amazon/kindle/krx/content/IContentSelection;",
            ">;"
        }
    .end annotation

    return-object p0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p1, Lcom/amazon/kindle/krx/content/IContentSelection;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/reportcontenterror/RceWidgetItem;->get(Lcom/amazon/kindle/krx/content/IContentSelection;)Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;

    return-object p0
.end method

.method public getButtonIdentifier()Ljava/lang/String;
    .locals 1

    const-string v0, "REPORT_CONTENT_ERROR_WIDGET_KEY"

    return-object v0
.end method

.method public getPriority(Lcom/amazon/kindle/krx/content/IContentSelection;)I
    .locals 0

    const/16 p1, 0xc8

    return p1
.end method

.method public bridge synthetic getPriority(Ljava/lang/Object;)I
    .locals 0

    .line 28
    check-cast p1, Lcom/amazon/kindle/krx/content/IContentSelection;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/reportcontenterror/RceWidgetItem;->getPriority(Lcom/amazon/kindle/krx/content/IContentSelection;)I

    move-result p1

    return p1
.end method

.method public getText(Landroid/content/Context;Lcom/amazon/kindle/krx/content/IContentSelection;)Ljava/lang/String;
    .locals 0

    .line 166
    sget p2, Lcom/amazon/kindle/reportcontenterror/R$string;->rce_plugin_widget_text:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getText(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 28
    check-cast p2, Lcom/amazon/kindle/krx/content/IContentSelection;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/reportcontenterror/RceWidgetItem;->getText(Landroid/content/Context;Lcom/amazon/kindle/krx/content/IContentSelection;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isVisible(Lcom/amazon/kindle/krx/content/IContentSelection;)Z
    .locals 1

    .line 152
    sget-object v0, Lcom/amazon/kindle/krx/content/ContentType;->BOOK_SAMPLE:Lcom/amazon/kindle/krx/content/ContentType;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IContentSelection;->getBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public bridge synthetic isVisible(Ljava/lang/Object;)Z
    .locals 0

    .line 28
    check-cast p1, Lcom/amazon/kindle/krx/content/IContentSelection;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/reportcontenterror/RceWidgetItem;->isVisible(Lcom/amazon/kindle/krx/content/IContentSelection;)Z

    move-result p1

    return p1
.end method

.method public onClick(Lcom/amazon/kindle/krx/content/IContentSelection;)Z
    .locals 12

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 69
    sget-object v1, Lcom/amazon/kindle/krx/content/IContentSelection$KRXSelectionType;->NONE_SELECTED:Lcom/amazon/kindle/krx/content/IContentSelection$KRXSelectionType;

    .line 70
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IContentSelection;->getSelectionType()Lcom/amazon/kindle/krx/content/IContentSelection$KRXSelectionType;

    move-result-object v2

    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lcom/amazon/kindle/krx/content/IContentSelection$KRXSelectionType;->TEXT_NON_EDITABLE:Lcom/amazon/kindle/krx/content/IContentSelection$KRXSelectionType;

    .line 70
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IContentSelection;->getSelectionType()Lcom/amazon/kindle/krx/content/IContentSelection$KRXSelectionType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 71
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IContentSelection;->hasSelection()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 76
    :cond_0
    iget-object v1, p0, Lcom/amazon/kindle/reportcontenterror/RceWidgetItem;->readerSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-static {v1}, Lcom/amazon/kindle/reportcontenterror/util/StringResourceUtil;->fetchStringsFromAes(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Ljava/lang/String;

    move-result-object v1

    .line 78
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IContentSelection;->getSelectionStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v2

    .line 79
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IContentSelection;->getSelectionEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v3

    .line 80
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IContentSelection;->getBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v4

    .line 81
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IContentSelection;->getBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v5

    invoke-interface {v5}, Lcom/amazon/kindle/krx/content/IBook;->getGuid()Ljava/lang/String;

    move-result-object v5

    .line 84
    new-instance v6, Landroid/content/Intent;

    iget-object v7, p0, Lcom/amazon/kindle/reportcontenterror/RceWidgetItem;->readerSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v7}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/amazon/kindle/reportcontenterror/activity/CategorySelectionActivity;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v7, 0x0

    .line 87
    invoke-static {v1}, Lorg/apache/commons/lang3/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v8

    const-string v9, " There was an exception: "

    if-eqz v8, :cond_1

    const-string v8, "aes_resource"

    .line 88
    invoke-virtual {v6, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v8

    goto :goto_0

    :catch_0
    move-exception v1

    .line 92
    sget-object v8, Lcom/amazon/kindle/reportcontenterror/RceWidgetItem;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    const/4 v1, 0x1

    if-ne v3, v2, :cond_2

    .line 97
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IContentSelection;->getSelectedText()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 98
    iget-object p1, p0, Lcom/amazon/kindle/reportcontenterror/RceWidgetItem;->readerSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 99
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v8, p0, Lcom/amazon/kindle/reportcontenterror/RceWidgetItem;->readerSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 100
    invoke-interface {v8}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-string v10, "rce_plugin_image_alt_text"

    .line 98
    invoke-static {v10, p1, v7, v8}, Lcom/amazon/kindle/reportcontenterror/util/StringResourceUtil;->getString(Ljava/lang/String;Landroid/content/res/Resources;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 102
    :cond_2
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IContentSelection;->getSelectedText()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    return v0

    :cond_3
    new-array v7, v1, [Ljava/lang/Object;

    .line 105
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IContentSelection;->getSelectedText()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v7, v0

    const-string p1, "\"%s\""

    invoke-static {p1, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 108
    :goto_1
    sget-object v7, Lcom/amazon/kindle/reportcontenterror/RceWidgetItem;->LOG_TAG:Ljava/lang/String;

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v4, v8, v0

    aput-object p1, v8, v1

    const/4 v0, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v0

    const/4 v0, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v0

    const-string v0, "ASIN_KEY: %s ; Selection: %s ; Positions: %d - %d"

    invoke-static {v0, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v0, 0x10000000

    .line 110
    invoke-virtual {v6, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "selected_text"

    .line 111
    invoke-virtual {v6, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "start_position"

    .line 112
    invoke-virtual {v6, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "end_position"

    .line 113
    invoke-virtual {v6, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "asin"

    .line 114
    invoke-virtual {v6, p1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "content_guid"

    .line 115
    invoke-virtual {v6, p1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    invoke-static {}, Lcom/amazon/kindle/reportcontenterror/helper/MetricsHelper;->getInstance()Lcom/amazon/kindle/reportcontenterror/helper/MetricsHelper;

    move-result-object p1

    const-string v0, "ReportContentErrorButtonPressed"

    .line 118
    invoke-virtual {p1, v0}, Lcom/amazon/kindle/reportcontenterror/helper/MetricsHelper;->reportMetric(Ljava/lang/String;)V

    const-string v0, "ReportTimeTaken"

    .line 119
    invoke-virtual {p1, v0}, Lcom/amazon/kindle/reportcontenterror/helper/MetricsHelper;->startMetricTimer(Ljava/lang/String;)V

    .line 122
    :try_start_1
    iget-object p1, p0, Lcom/amazon/kindle/reportcontenterror/RceWidgetItem;->readerSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 124
    sget-object v0, Lcom/amazon/kindle/reportcontenterror/RceWidgetItem;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return v1

    .line 72
    :cond_4
    :goto_3
    sget-object p1, Lcom/amazon/kindle/reportcontenterror/RceWidgetItem;->LOG_TAG:Ljava/lang/String;

    const-string v1, "There was a problem in the selection."

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public bridge synthetic onClick(Ljava/lang/Object;)Z
    .locals 0

    .line 28
    check-cast p1, Lcom/amazon/kindle/krx/content/IContentSelection;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/reportcontenterror/RceWidgetItem;->onClick(Lcom/amazon/kindle/krx/content/IContentSelection;)Z

    move-result p1

    return p1
.end method
