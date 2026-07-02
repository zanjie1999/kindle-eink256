.class public Lcom/amazon/overlay/translation/states/TranslationCallbacks;
.super Ljava/lang/Object;
.source "TranslationCallbacks.java"


# static fields
.field private static s_promptWANWarning:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 24
    sget-boolean v0, Lcom/amazon/overlay/translation/states/TranslationCallbacks;->s_promptWANWarning:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0

    .line 24
    sput-boolean p0, Lcom/amazon/overlay/translation/states/TranslationCallbacks;->s_promptWANWarning:Z

    return p0
.end method

.method public static getLanguageButtonListener(Lcom/amazon/overlay/translation/TranslationLanguageButton;Lcom/amazon/overlay/translation/states/TranslationStateMachine;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .line 114
    new-instance v0, Lcom/amazon/overlay/translation/states/TranslationCallbacks$2;

    invoke-direct {v0, p1, p0}, Lcom/amazon/overlay/translation/states/TranslationCallbacks$2;-><init>(Lcom/amazon/overlay/translation/states/TranslationStateMachine;Lcom/amazon/overlay/translation/TranslationLanguageButton;)V

    return-object v0
.end method

.method public static getSpeakListener(Lcom/amazon/overlay/translation/states/TranslationStateMachine;)Landroid/view/View$OnClickListener;
    .locals 1

    .line 47
    new-instance v0, Lcom/amazon/overlay/translation/states/TranslationCallbacks$1;

    invoke-direct {v0, p0}, Lcom/amazon/overlay/translation/states/TranslationCallbacks$1;-><init>(Lcom/amazon/overlay/translation/states/TranslationStateMachine;)V

    return-object v0
.end method
