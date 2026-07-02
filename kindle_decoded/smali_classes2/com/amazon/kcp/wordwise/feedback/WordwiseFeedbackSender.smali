.class public Lcom/amazon/kcp/wordwise/feedback/WordwiseFeedbackSender;
.super Ljava/lang/Object;
.source "WordwiseFeedbackSender.java"


# static fields
.field private static final FORMAT_VERSION:Ljava/lang/String; = "1.0"

.field private static final TAG:Ljava/lang/String;

.field private static final TOPIC:Ljava/lang/String; = "LanguageLayer.Customer.Feedback"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lcom/amazon/kcp/wordwise/feedback/WordwiseFeedbackSender;

    invoke-static {v0}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/wordwise/feedback/WordwiseFeedbackSender;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 20
    sget-object v0, Lcom/amazon/kcp/wordwise/feedback/WordwiseFeedbackSender;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;Ljava/lang/String;ZLcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;Lcom/amazon/kcp/wordwise/gloss/IGlossModel;Ljava/lang/String;Lcom/amazon/kcp/wordwise/feedback/FeedbackStatus;I)Lorg/json/JSONObject;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 20
    invoke-static/range {p0 .. p7}, Lcom/amazon/kcp/wordwise/feedback/WordwiseFeedbackSender;->getPayload(Ljava/lang/String;Ljava/lang/String;ZLcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;Lcom/amazon/kcp/wordwise/gloss/IGlossModel;Ljava/lang/String;Lcom/amazon/kcp/wordwise/feedback/FeedbackStatus;I)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/kindle/krx/content/IContentSelection;Lcom/amazon/kcp/wordwise/gloss/IGlossModel;)Lorg/json/JSONObject;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 20
    invoke-static {p0, p1}, Lcom/amazon/kcp/wordwise/feedback/WordwiseFeedbackSender;->getDictionaryFeedbackPayload(Lcom/amazon/kindle/krx/content/IContentSelection;Lcom/amazon/kcp/wordwise/gloss/IGlossModel;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private static getDictionaryFeedbackPayload(Lcom/amazon/kindle/krx/content/IContentSelection;Lcom/amazon/kcp/wordwise/gloss/IGlossModel;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 118
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "format_version"

    const-string v2, "1.0"

    .line 119
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 120
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IContentSelection;->getBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/content/IBook;->getGuid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "acr"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 121
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IContentSelection;->getBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v1

    const-string v2, "asin"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 122
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IContentSelection;->getSelectionStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    const-string v2, "start"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 123
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IContentSelection;->getSelectionEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    const-string v2, "end"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 124
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IContentSelection;->getSelectedText()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "word"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 p0, 0x0

    .line 125
    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p0

    const-string v1, "glossed"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    invoke-interface {p1}, Lcom/amazon/kcp/wordwise/gloss/IGlossModel;->getDictionaryId()Ljava/lang/String;

    move-result-object p0

    const-string v1, "dictionary_id"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    invoke-interface {p1}, Lcom/amazon/kcp/wordwise/gloss/IGlossModel;->getDictionaryRevision()Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "dictionary_revision"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    invoke-interface {p1}, Lcom/amazon/kcp/wordwise/gloss/IGlossModel;->getSidecarRevision()Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "sidecar_revision"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    invoke-interface {p1}, Lcom/amazon/kcp/wordwise/gloss/IGlossModel;->getAcr()Ljava/lang/String;

    move-result-object p0

    const-string v1, "sidecar_book_acr"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 130
    invoke-interface {p1}, Lcom/amazon/kcp/wordwise/gloss/IGlossModel;->getSidecarBookRevision()Ljava/lang/String;

    move-result-object p0

    const-string p1, "sidecar_book_revision"

    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 131
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getWordWiseDifficultyLevel()I

    move-result p0

    const-string p1, "difficulty"

    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v0
.end method

.method private static getPayload(Ljava/lang/String;Ljava/lang/String;ZLcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;Lcom/amazon/kcp/wordwise/gloss/IGlossModel;Ljava/lang/String;Lcom/amazon/kcp/wordwise/feedback/FeedbackStatus;I)Lorg/json/JSONObject;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 58
    invoke-virtual/range {p3 .. p3}, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->getStartPosition()I

    move-result v0

    .line 59
    invoke-virtual/range {p3 .. p3}, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->getLastStartPosition()I

    move-result v1

    .line 60
    invoke-virtual/range {p3 .. p3}, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->getGlossWordSense()Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;->getTermId()I

    move-result v2

    .line 63
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "true"

    if-eqz p2, :cond_0

    move-object v5, v4

    goto :goto_0

    :cond_0
    const-string v5, "false"

    .line 65
    :goto_0
    invoke-virtual/range {p3 .. p3}, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->getOriginalSenseId()I

    move-result v6

    .line 66
    invoke-virtual/range {p3 .. p3}, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->getSenseId()I

    move-result v7

    .line 67
    invoke-interface/range {p4 .. p4}, Lcom/amazon/kcp/wordwise/gloss/IGlossModel;->getContentType()Ljava/lang/String;

    move-result-object v8

    .line 68
    invoke-interface/range {p4 .. p4}, Lcom/amazon/kcp/wordwise/gloss/IGlossModel;->getDictionaryRevision()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 69
    invoke-interface/range {p4 .. p4}, Lcom/amazon/kcp/wordwise/gloss/IGlossModel;->getSidecarRevision()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 70
    invoke-interface/range {p4 .. p4}, Lcom/amazon/kcp/wordwise/gloss/IGlossModel;->getAcr()Ljava/lang/String;

    move-result-object v11

    .line 71
    invoke-interface/range {p4 .. p4}, Lcom/amazon/kcp/wordwise/gloss/IGlossModel;->getSidecarBookRevision()Ljava/lang/String;

    move-result-object v12

    .line 73
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    const-string v14, "format_version"

    const-string v15, "1.0"

    .line 75
    invoke-virtual {v13, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v14, "asin"

    move-object/from16 v15, p0

    .line 76
    invoke-virtual {v13, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v14, "acr"

    move-object/from16 v15, p1

    .line 77
    invoke-virtual {v13, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v14, "start"

    .line 78
    invoke-virtual {v13, v14, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "end"

    .line 79
    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "term_id"

    .line 80
    invoke-virtual {v13, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v0, "word"

    move-object/from16 v1, p5

    .line 81
    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "helpful"

    .line 82
    invoke-virtual {v13, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "error_status"

    .line 83
    invoke-virtual {v13, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "sense_id"

    .line 84
    invoke-virtual {v13, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "corrected_sense_id"

    .line 85
    invoke-virtual {v13, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "glossed"

    .line 86
    invoke-virtual {v13, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "content_type"

    .line 87
    invoke-virtual {v13, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "dictionary_revision"

    .line 88
    invoke-virtual {v13, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "sidecar_revision"

    .line 89
    invoke-virtual {v13, v0, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "sidecar_book_acr"

    .line 90
    invoke-virtual {v13, v0, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "sidecar_book_revision"

    .line 91
    invoke-virtual {v13, v0, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "difficulty"

    move/from16 v1, p7

    .line 92
    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v13
.end method

.method public static sendDictionaryLookupFeedback(Lcom/amazon/kindle/krx/content/IContentSelection;Lcom/amazon/kcp/wordwise/gloss/IGlossModel;)V
    .locals 1

    .line 98
    new-instance v0, Lcom/amazon/kcp/wordwise/feedback/WordwiseFeedbackSender$2;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kcp/wordwise/feedback/WordwiseFeedbackSender$2;-><init>(Lcom/amazon/kindle/krx/content/IContentSelection;Lcom/amazon/kcp/wordwise/gloss/IGlossModel;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static sendFeedback(ZLcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;Lcom/amazon/kcp/wordwise/gloss/IGlossModel;Ljava/lang/String;Lcom/amazon/kcp/wordwise/feedback/FeedbackStatus;)V
    .locals 9

    .line 30
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v2

    if-nez v2, :cond_0

    .line 32
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p0

    invoke-interface {p0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p0

    sget-object p1, Lcom/amazon/kcp/wordwise/feedback/WordwiseFeedbackSender;->TAG:Ljava/lang/String;

    const-string p2, "Failed to send feedback: missing current book"

    invoke-interface {p0, p1, p2}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 35
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getWordWiseDifficultyLevel()I

    move-result v8

    .line 37
    new-instance v0, Lcom/amazon/kcp/wordwise/feedback/WordwiseFeedbackSender$1;

    move-object v1, v0

    move v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v8}, Lcom/amazon/kcp/wordwise/feedback/WordwiseFeedbackSender$1;-><init>(Lcom/amazon/kindle/krx/content/IBook;ZLcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;Lcom/amazon/kcp/wordwise/gloss/IGlossModel;Ljava/lang/String;Lcom/amazon/kcp/wordwise/feedback/FeedbackStatus;I)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
