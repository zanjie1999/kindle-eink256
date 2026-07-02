.class public Lcom/amazon/kcp/store/RubyStoreErrorStateHelper;
.super Ljava/lang/Object;
.source "RubyStoreErrorStateHelper.java"

# interfaces
.implements Lcom/amazon/kcp/store/IStoreErrorStateHelper;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final currentErrorTypes:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/amazon/kcp/store/StoreError;",
            ">;"
        }
    .end annotation
.end field

.field private errorMessageContainer:Landroid/view/View;

.field private errorMessageTextView:Landroid/widget/TextView;

.field private final fragment:Lcom/amazon/kcp/store/StoreFragment;

.field private isInErrorState:Z

.field private retryButtonContainer:Landroid/view/View;

.field private retryButtonImageView:Landroid/widget/ImageView;

.field private retryButtonTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-class v0, Lcom/amazon/kcp/store/RubyStoreErrorStateHelper;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/store/RubyStoreErrorStateHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/store/StoreFragment;Landroid/view/View;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/amazon/kcp/store/RubyStoreErrorStateHelper;->isInErrorState:Z

    .line 27
    const-class v0, Lcom/amazon/kcp/store/StoreError;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/store/RubyStoreErrorStateHelper;->currentErrorTypes:Ljava/util/EnumSet;

    .line 41
    iput-object p1, p0, Lcom/amazon/kcp/store/RubyStoreErrorStateHelper;->fragment:Lcom/amazon/kcp/store/StoreFragment;

    .line 42
    invoke-direct {p0, p2}, Lcom/amazon/kcp/store/RubyStoreErrorStateHelper;->initializeErrorView(Landroid/view/View;)V

    return-void
.end method

.method private getHighestPriorityType()Lcom/amazon/kcp/store/StoreError;
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/amazon/kcp/store/RubyStoreErrorStateHelper;->currentErrorTypes:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/store/RubyStoreErrorStateHelper;->currentErrorTypes:Ljava/util/EnumSet;

    sget-object v1, Lcom/amazon/kcp/store/StoreError;->ACCESS_NOT_ALLOWED:Lcom/amazon/kcp/store/StoreError;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    sget-object v0, Lcom/amazon/kcp/store/StoreError;->ACCESS_NOT_ALLOWED:Lcom/amazon/kcp/store/StoreError;

    return-object v0

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/store/RubyStoreErrorStateHelper;->currentErrorTypes:Ljava/util/EnumSet;

    sget-object v1, Lcom/amazon/kcp/store/StoreError;->ACCESS_NOT_ALLOWED_BOOKS_NEWSSTAND_STORES_BLOCKED:Lcom/amazon/kcp/store/StoreError;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 170
    sget-object v0, Lcom/amazon/kcp/store/StoreError;->ACCESS_NOT_ALLOWED_BOOKS_NEWSSTAND_STORES_BLOCKED:Lcom/amazon/kcp/store/StoreError;

    return-object v0

    .line 172
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/store/RubyStoreErrorStateHelper;->currentErrorTypes:Ljava/util/EnumSet;

    sget-object v1, Lcom/amazon/kcp/store/StoreError;->ACCESS_NOT_ALLOWED_BOOKS_NEWSSTAND_BLOCKED:Lcom/amazon/kcp/store/StoreError;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 173
    sget-object v0, Lcom/amazon/kcp/store/StoreError;->ACCESS_NOT_ALLOWED_BOOKS_NEWSSTAND_BLOCKED:Lcom/amazon/kcp/store/StoreError;

    return-object v0

    .line 175
    :cond_3
    iget-object v0, p0, Lcom/amazon/kcp/store/RubyStoreErrorStateHelper;->currentErrorTypes:Ljava/util/EnumSet;

    sget-object v1, Lcom/amazon/kcp/store/StoreError;->ACCESS_NOT_ALLOWED_STORES_BLOCKED:Lcom/amazon/kcp/store/StoreError;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 176
    sget-object v0, Lcom/amazon/kcp/store/StoreError;->ACCESS_NOT_ALLOWED_STORES_BLOCKED:Lcom/amazon/kcp/store/StoreError;

    return-object v0

    .line 178
    :cond_4
    iget-object v0, p0, Lcom/amazon/kcp/store/RubyStoreErrorStateHelper;->currentErrorTypes:Ljava/util/EnumSet;

    sget-object v1, Lcom/amazon/kcp/store/StoreError;->BROWSERHOST_INIT_FAILURE:Lcom/amazon/kcp/store/StoreError;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 179
    sget-object v0, Lcom/amazon/kcp/store/StoreError;->BROWSERHOST_INIT_FAILURE:Lcom/amazon/kcp/store/StoreError;

    return-object v0

    .line 181
    :cond_5
    iget-object v0, p0, Lcom/amazon/kcp/store/RubyStoreErrorStateHelper;->currentErrorTypes:Ljava/util/EnumSet;

    sget-object v1, Lcom/amazon/kcp/store/StoreError;->CREDENTIAL_UPDATE_FAILURE:Lcom/amazon/kcp/store/StoreError;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 182
    sget-object v0, Lcom/amazon/kcp/store/StoreError;->CREDENTIAL_UPDATE_FAILURE:Lcom/amazon/kcp/store/StoreError;

    return-object v0

    .line 184
    :cond_6
    iget-object v0, p0, Lcom/amazon/kcp/store/RubyStoreErrorStateHelper;->currentErrorTypes:Ljava/util/EnumSet;

    sget-object v1, Lcom/amazon/kcp/store/StoreError;->NO_NETWORK_CONNECTION:Lcom/amazon/kcp/store/StoreError;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 185
    sget-object v0, Lcom/amazon/kcp/store/StoreError;->NO_NETWORK_CONNECTION:Lcom/amazon/kcp/store/StoreError;

    return-object v0

    .line 187
    :cond_7
    iget-object v0, p0, Lcom/amazon/kcp/store/RubyStoreErrorStateHelper;->currentErrorTypes:Ljava/util/EnumSet;

    sget-object v1, Lcom/amazon/kcp/store/StoreError;->BAD_URL:Lcom/amazon/kcp/store/StoreError;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 188
    sget-object v0, Lcom/amazon/kcp/store/StoreError;->BAD_URL:Lcom/amazon/kcp/store/StoreError;

    return-object v0

    .line 190
    :cond_8
    sget-object v0, Lcom/amazon/kcp/store/StoreError;->UNKNOWN:Lcom/amazon/kcp/store/StoreError;

    return-object v0
.end method

.method private initializeErrorView(Landroid/view/View;)V
    .locals 1

    .line 46
    sget v0, Lcom/amazon/kcp/store/R$id;->store_error_message_stub:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    if-nez p1, :cond_0

    .line 48
    sget-object p1, Lcom/amazon/kcp/store/RubyStoreErrorStateHelper;->TAG:Ljava/lang/String;

    const-string v0, "errorMessageStub is null. Do not attempt inflating!"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 51
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/store/RubyStoreErrorStateHelper;->errorMessageContainer:Landroid/view/View;

    .line 52
    sget v0, Lcom/amazon/kcp/store/R$id;->error_message_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/amazon/kcp/store/RubyStoreErrorStateHelper;->errorMessageTextView:Landroid/widget/TextView;

    .line 53
    iget-object p1, p0, Lcom/amazon/kcp/store/RubyStoreErrorStateHelper;->errorMessageContainer:Landroid/view/View;

    sget v0, Lcom/amazon/kcp/store/R$id;->retry_button_section:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/store/RubyStoreErrorStateHelper;->retryButtonContainer:Landroid/view/View;

    .line 54
    iget-object p1, p0, Lcom/amazon/kcp/store/RubyStoreErrorStateHelper;->errorMessageContainer:Landroid/view/View;

    sget v0, Lcom/amazon/kcp/store/R$id;->retry_button_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/amazon/kcp/store/RubyStoreErrorStateHelper;->retryButtonTextView:Landroid/widget/TextView;

    .line 55
    iget-object p1, p0, Lcom/amazon/kcp/store/RubyStoreErrorStateHelper;->errorMessageContainer:Landroid/view/View;

    sget v0, Lcom/amazon/kcp/store/R$id;->retry_button_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/amazon/kcp/store/RubyStoreErrorStateHelper;->retryButtonImageView:Landroid/widget/ImageView;

    .line 56
    iget-object p1, p0, Lcom/amazon/kcp/store/RubyStoreErrorStateHelper;->retryButtonContainer:Landroid/view/View;

    new-instance v0, Lcom/amazon/kcp/store/RubyStoreErrorStateHelper$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/store/RubyStoreErrorStateHelper$1;-><init>(Lcom/amazon/kcp/store/RubyStoreErrorStateHelper;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object p1, p0, Lcom/amazon/kcp/store/RubyStoreErrorStateHelper;->errorMessageContainer:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public onReceivedError(Lcom/amazon/kcp/store/StoreError;)V
    .locals 4

    .line 67
    iget-object v0, p0, Lcom/amazon/kcp/store/RubyStoreErrorStateHelper;->currentErrorTypes:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 68
    iput-boolean p1, p0, Lcom/amazon/kcp/store/RubyStoreErrorStateHelper;->isInErrorState:Z

    .line 69
    iget-object v0, p0, Lcom/amazon/kcp/store/RubyStoreErrorStateHelper;->errorMessageContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 71
    invoke-direct {p0}, Lcom/amazon/kcp/store/RubyStoreErrorStateHelper;->getHighestPriorityType()Lcom/amazon/kcp/store/StoreError;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 75
    :cond_0
    iget-object v2, p0, Lcom/amazon/kcp/store/RubyStoreErrorStateHelper;->errorMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/amazon/kcp/store/StoreError;->getErrorMessage()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 76
    sget-object v2, Lcom/amazon/kcp/store/RubyStoreErrorStateHelper$2;->$SwitchMap$com$amazon$kcp$store$StoreError$StoreErrorRecoverType:[I

    invoke-virtual {v0}, Lcom/amazon/kcp/store/StoreError;->getRecoverType()Lcom/amazon/kcp/store/StoreError$StoreErrorRecoverType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const/16 v2, 0x8

    if-eq v0, p1, :cond_2

    const/4 p1, 0x2

    if-eq v0, p1, :cond_3

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    goto :goto_0

    .line 92
    :cond_1
    iget-object p1, p0, Lcom/amazon/kcp/store/RubyStoreErrorStateHelper;->retryButtonContainer:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 78
    :cond_2
    const-class p1, Lcom/amazon/kindle/krx/payment/PlayBillingUtils;

    invoke-static {p1}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/krx/payment/PlayBillingUtils;

    if-eqz p1, :cond_3

    .line 79
    invoke-interface {p1}, Lcom/amazon/kindle/krx/payment/PlayBillingUtils;->shouldUsePaymentFlows()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 80
    iget-object p1, p0, Lcom/amazon/kcp/store/RubyStoreErrorStateHelper;->retryButtonContainer:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 81
    iget-object p1, p0, Lcom/amazon/kcp/store/RubyStoreErrorStateHelper;->retryButtonTextView:Landroid/widget/TextView;

    sget v0, Lcom/amazon/kcp/store/R$string;->store_retry_go_store_front:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 82
    iget-object p1, p0, Lcom/amazon/kcp/store/RubyStoreErrorStateHelper;->retryButtonImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 87
    :cond_3
    iget-object p1, p0, Lcom/amazon/kcp/store/RubyStoreErrorStateHelper;->retryButtonContainer:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 88
    iget-object p1, p0, Lcom/amazon/kcp/store/RubyStoreErrorStateHelper;->retryButtonTextView:Landroid/widget/TextView;

    sget v0, Lcom/amazon/kcp/store/R$string;->try_again:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 89
    iget-object p1, p0, Lcom/amazon/kcp/store/RubyStoreErrorStateHelper;->retryButtonImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public resetErrorState(Ljava/util/EnumSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/amazon/kcp/store/StoreError;",
            ">;)V"
        }
    .end annotation

    .line 106
    iget-boolean v0, p0, Lcom/amazon/kcp/store/RubyStoreErrorStateHelper;->isInErrorState:Z

    if-nez v0, :cond_0

    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/store/RubyStoreErrorStateHelper;->currentErrorTypes:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->removeAll(Ljava/util/Collection;)Z

    .line 111
    iget-object p1, p0, Lcom/amazon/kcp/store/RubyStoreErrorStateHelper;->currentErrorTypes:Ljava/util/EnumSet;

    invoke-virtual {p1}, Ljava/util/EnumSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 112
    iget-object p1, p0, Lcom/amazon/kcp/store/RubyStoreErrorStateHelper;->errorMessageContainer:Landroid/view/View;

    const/16 v0, 0x8

    if-eqz p1, :cond_1

    .line 113
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 116
    :cond_1
    iget-object p1, p0, Lcom/amazon/kcp/store/RubyStoreErrorStateHelper;->fragment:Lcom/amazon/kcp/store/StoreFragment;

    iget-object p1, p1, Lcom/amazon/kcp/store/StoreFragment;->webView:Lcom/amazon/kcp/store/StoreWebView;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    const/4 p1, 0x0

    .line 117
    iput-boolean p1, p0, Lcom/amazon/kcp/store/RubyStoreErrorStateHelper;->isInErrorState:Z

    :cond_2
    return-void
.end method

.method public retryInErrorState()V
    .locals 3

    .line 123
    invoke-direct {p0}, Lcom/amazon/kcp/store/RubyStoreErrorStateHelper;->getHighestPriorityType()Lcom/amazon/kcp/store/StoreError;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 124
    sget-object v1, Lcom/amazon/kcp/store/StoreError;->ACCESS_NOT_ALLOWED:Lcom/amazon/kcp/store/StoreError;

    if-eq v0, v1, :cond_5

    sget-object v1, Lcom/amazon/kcp/store/StoreError;->ACCESS_NOT_ALLOWED_BOOKS_NEWSSTAND_STORES_BLOCKED:Lcom/amazon/kcp/store/StoreError;

    if-eq v0, v1, :cond_5

    sget-object v1, Lcom/amazon/kcp/store/StoreError;->ACCESS_NOT_ALLOWED_BOOKS_NEWSSTAND_BLOCKED:Lcom/amazon/kcp/store/StoreError;

    if-eq v0, v1, :cond_5

    sget-object v1, Lcom/amazon/kcp/store/StoreError;->ACCESS_NOT_ALLOWED_STORES_BLOCKED:Lcom/amazon/kcp/store/StoreError;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 131
    :cond_0
    sget-object v1, Lcom/amazon/kcp/store/RubyStoreErrorStateHelper$2;->$SwitchMap$com$amazon$kcp$store$StoreError:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/store/RubyStoreErrorStateHelper;->fragment:Lcom/amazon/kcp/store/StoreFragment;

    invoke-virtual {v0}, Lcom/amazon/kcp/store/StoreFragment;->clearHistory()V

    .line 148
    iget-object v0, p0, Lcom/amazon/kcp/store/RubyStoreErrorStateHelper;->fragment:Lcom/amazon/kcp/store/StoreFragment;

    invoke-virtual {v0}, Lcom/amazon/kcp/store/StoreFragment;->loadStorefontWithDefaultParameters()V

    goto :goto_0

    .line 143
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/store/RubyStoreErrorStateHelper;->fragment:Lcom/amazon/kcp/store/StoreFragment;

    invoke-virtual {v0}, Lcom/amazon/kcp/store/StoreFragment;->reloadWebView()V

    goto :goto_0

    .line 140
    :cond_3
    iget-object v0, p0, Lcom/amazon/kcp/store/RubyStoreErrorStateHelper;->fragment:Lcom/amazon/kcp/store/StoreFragment;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/store/StoreFragment;->onCredentialsUpdateFailed(Z)V

    goto :goto_0

    .line 133
    :cond_4
    iget-object v0, p0, Lcom/amazon/kcp/store/RubyStoreErrorStateHelper;->fragment:Lcom/amazon/kcp/store/StoreFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 135
    iget-object v0, p0, Lcom/amazon/kcp/store/RubyStoreErrorStateHelper;->fragment:Lcom/amazon/kcp/store/StoreFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/store/StoreFragment;->setUsUpTheView(Landroid/view/View;)V

    .line 136
    iget-object v0, p0, Lcom/amazon/kcp/store/RubyStoreErrorStateHelper;->fragment:Lcom/amazon/kcp/store/StoreFragment;

    invoke-virtual {v0}, Lcom/amazon/kcp/store/StoreFragment;->initiateStoreLoad()V

    :cond_5
    :goto_0
    return-void
.end method
