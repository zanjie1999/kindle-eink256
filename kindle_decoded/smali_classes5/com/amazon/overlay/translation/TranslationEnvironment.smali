.class public Lcom/amazon/overlay/translation/TranslationEnvironment;
.super Ljava/lang/Object;
.source "TranslationEnvironment.java"


# instance fields
.field private final m_activity:Landroid/app/Activity;

.field private final m_readerSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private final m_speakPlayer:Lcom/amazon/overlay/translation/SpeakPlayer;

.field private final m_translationDialogUI:Lcom/amazon/overlay/translation/TranslationDialogUI;

.field private final m_translationSelection:Lcom/amazon/overlay/translation/TranslationSelection;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/amazon/overlay/translation/TranslationDialogUI;Lcom/amazon/overlay/translation/TranslationSelection;Lcom/amazon/overlay/translation/SpeakPlayer;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/amazon/overlay/translation/TranslationEnvironment;->m_activity:Landroid/app/Activity;

    .line 43
    iput-object p2, p0, Lcom/amazon/overlay/translation/TranslationEnvironment;->m_translationDialogUI:Lcom/amazon/overlay/translation/TranslationDialogUI;

    .line 44
    iput-object p3, p0, Lcom/amazon/overlay/translation/TranslationEnvironment;->m_translationSelection:Lcom/amazon/overlay/translation/TranslationSelection;

    .line 45
    iput-object p4, p0, Lcom/amazon/overlay/translation/TranslationEnvironment;->m_speakPlayer:Lcom/amazon/overlay/translation/SpeakPlayer;

    .line 46
    iput-object p5, p0, Lcom/amazon/overlay/translation/TranslationEnvironment;->m_readerSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-void
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/amazon/overlay/translation/TranslationEnvironment;->m_activity:Landroid/app/Activity;

    return-object v0
.end method

.method public getSpeakPlayer()Lcom/amazon/overlay/translation/SpeakPlayer;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/amazon/overlay/translation/TranslationEnvironment;->m_speakPlayer:Lcom/amazon/overlay/translation/SpeakPlayer;

    return-object v0
.end method

.method public getTranslationDialogUI()Lcom/amazon/overlay/translation/TranslationDialogUI;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/amazon/overlay/translation/TranslationEnvironment;->m_translationDialogUI:Lcom/amazon/overlay/translation/TranslationDialogUI;

    return-object v0
.end method

.method public getTranslationSelection()Lcom/amazon/overlay/translation/TranslationSelection;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/amazon/overlay/translation/TranslationEnvironment;->m_translationSelection:Lcom/amazon/overlay/translation/TranslationSelection;

    return-object v0
.end method

.method public isUserAuthenticated()Z
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/amazon/overlay/translation/TranslationEnvironment;->m_readerSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getActiveUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IUserAccount;->isAuthenticated()Z

    move-result v0

    return v0
.end method
