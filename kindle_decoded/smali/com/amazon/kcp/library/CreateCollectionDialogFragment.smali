.class public Lcom/amazon/kcp/library/CreateCollectionDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "CreateCollectionDialogFragment.java"


# static fields
.field private static final PLUS_BUTTON_ENTRY_POINT:Ljava/lang/String; = "PlusButton"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected collectionFilter:Lcom/amazon/kindle/krx/collections/CollectionFilter;

.field private collectionName:Landroid/widget/EditText;

.field private collectionNameWatcher:Landroid/text/TextWatcher;

.field private phoneticSpelling:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const-class v0, Lcom/amazon/kcp/library/CreateCollectionDialogFragment;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/CreateCollectionDialogFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 54
    sget-object v0, Lcom/amazon/kindle/krx/collections/CollectionFilter;->ALL:Lcom/amazon/kindle/krx/collections/CollectionFilter;

    iput-object v0, p0, Lcom/amazon/kcp/library/CreateCollectionDialogFragment;->collectionFilter:Lcom/amazon/kindle/krx/collections/CollectionFilter;

    .line 56
    new-instance v0, Lcom/amazon/kcp/library/CreateCollectionDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/CreateCollectionDialogFragment$1;-><init>(Lcom/amazon/kcp/library/CreateCollectionDialogFragment;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/CreateCollectionDialogFragment;->collectionNameWatcher:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/library/CreateCollectionDialogFragment;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/amazon/kcp/library/CreateCollectionDialogFragment;->createCollection()V

    return-void
.end method

.method private createCollection()V
    .locals 5

    .line 153
    invoke-static {}, Lcom/amazon/kindle/collections/CollectionsManagerHolder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/CreateCollectionDialogFragment;->collectionName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 158
    iget-object v0, p0, Lcom/amazon/kcp/library/CreateCollectionDialogFragment;->collectionName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 160
    iget-object v1, p0, Lcom/amazon/kcp/library/CreateCollectionDialogFragment;->phoneticSpelling:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getVisibility()I

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_1

    move-object v1, v2

    goto :goto_0

    .line 165
    :cond_1
    iget-object v1, p0, Lcom/amazon/kcp/library/CreateCollectionDialogFragment;->phoneticSpelling:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 168
    :goto_0
    invoke-static {}, Lcom/amazon/kindle/services/locale/AndroidLocaleManager;->getInstance()Lcom/amazon/kindle/services/locale/AndroidLocaleManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kindle/services/locale/AndroidLocaleManager;->getAmazonLocaleCode()Ljava/lang/String;

    move-result-object v3

    .line 169
    invoke-static {v0, v1}, Lcom/amazon/kcp/util/LibraryUtils;->deduplicateCollectionName(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/collections/util/PronounceableName;

    move-result-object v0

    .line 171
    new-instance v1, Lcom/amazon/kindle/collections/dto/CollectionDTO;

    invoke-virtual {v0}, Lcom/amazon/kindle/collections/util/PronounceableName;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, v2, v3}, Lcom/amazon/kindle/collections/dto/CollectionDTO;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-virtual {v0}, Lcom/amazon/kindle/collections/util/PronounceableName;->getPronunciation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/collections/dto/CollectionDTO;->setTitlePronunciation(Ljava/lang/String;)V

    .line 175
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getSortFriendlyFormatter()Lcom/amazon/kindle/utils/ISortFriendlyFormatter;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/collections/dto/CollectionDTO;->updateSortableTitle(Lcom/amazon/kindle/utils/ISortFriendlyFormatter;)V

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "About to create a collection via CollectionsManager; collection - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/amazon/kindle/collections/dto/CollectionDTO;->valueOf(Lcom/amazon/kindle/collections/dto/ICollection;)Lcom/amazon/kindle/collections/dto/CollectionDTO;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    invoke-static {}, Lcom/amazon/kindle/collections/CollectionsManagerHolder;->getInstance()Lcom/amazon/kindle/collections/ICollectionsManager;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/amazon/kindle/collections/ICollectionsManager;->createCollection(Lcom/amazon/kindle/collections/dto/ICollection;)Z

    .line 181
    invoke-virtual {p0, v1}, Lcom/amazon/kcp/library/CreateCollectionDialogFragment;->onCollectionCreated(Lcom/amazon/kindle/collections/dto/ICollection;)V

    .line 183
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    sget-object v2, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v3, "LibraryActivity"

    const-string v4, "CollectionCreatedViaActionBar"

    invoke-virtual {v0, v3, v4, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 184
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 185
    invoke-virtual {v1}, Lcom/amazon/kindle/collections/dto/CollectionDTO;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CollectionID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "EntryPoint"

    const-string v2, "PlusButton"

    .line 186
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 189
    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v1

    const-string v2, "Collections"

    const-string v3, "CreateCollection"

    invoke-interface {v1, v2, v3, v0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_2
    return-void
.end method

.method private requestCollectionNameKeyboardFocus(Landroid/app/Dialog;)V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/amazon/kcp/library/CreateCollectionDialogFragment;->collectionName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 121
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    const/16 v0, 0x25

    .line 123
    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onCollectionCreated(Lcom/amazon/kindle/collections/dto/ICollection;)V
    .locals 3

    .line 142
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 144
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/amazon/kcp/library/CollectionItemsActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "Collection"

    .line 145
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p1, 0x1

    const-string v2, "LaunchAddToCollection"

    .line 146
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 147
    iget-object p1, p0, Lcom/amazon/kcp/library/CreateCollectionDialogFragment;->collectionFilter:Lcom/amazon/kindle/krx/collections/CollectionFilter;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "CollectionFilter"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .line 79
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 81
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setIcon(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 82
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/librarymodule/R$string;->create_collection_prompt:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 84
    sget v1, Lcom/amazon/kindle/librarymodule/R$layout;->ruby_dialog_collection_name:I

    .line 85
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 86
    sget v2, Lcom/amazon/kindle/librarymodule/R$id;->collection_name:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/amazon/kcp/library/CreateCollectionDialogFragment;->collectionName:Landroid/widget/EditText;

    .line 87
    sget v2, Lcom/amazon/kindle/librarymodule/R$id;->phonetic_name:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/amazon/kcp/library/CreateCollectionDialogFragment;->phoneticSpelling:Landroid/widget/EditText;

    .line 88
    iget-object v2, p0, Lcom/amazon/kcp/library/CreateCollectionDialogFragment;->collectionName:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/amazon/kcp/library/CreateCollectionDialogFragment;->collectionNameWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 90
    invoke-static {}, Lcom/amazon/kcp/util/LibraryUtils;->shouldShowPhoneticEntry()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 91
    iget-object v2, p0, Lcom/amazon/kcp/library/CreateCollectionDialogFragment;->phoneticSpelling:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 94
    :cond_0
    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 95
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/librarymodule/R$string;->create:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/library/CreateCollectionDialogFragment$2;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/library/CreateCollectionDialogFragment$2;-><init>(Lcom/amazon/kcp/library/CreateCollectionDialogFragment;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 101
    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->cancel:I

    new-instance v1, Lcom/amazon/kcp/library/CreateCollectionDialogFragment$3;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/library/CreateCollectionDialogFragment$3;-><init>(Lcom/amazon/kcp/library/CreateCollectionDialogFragment;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 108
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 109
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/CreateCollectionDialogFragment;->requestCollectionNameKeyboardFocus(Landroid/app/Dialog;)V

    return-object p1
.end method

.method public onStart()V
    .locals 2

    .line 129
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 130
    iget-object v0, p0, Lcom/amazon/kcp/library/CreateCollectionDialogFragment;->collectionNameWatcher:Landroid/text/TextWatcher;

    iget-object v1, p0, Lcom/amazon/kcp/library/CreateCollectionDialogFragment;->collectionName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/text/TextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    return-void
.end method

.method public setCollectionFilter(Lcom/amazon/kindle/krx/collections/CollectionFilter;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/amazon/kcp/library/CreateCollectionDialogFragment;->collectionFilter:Lcom/amazon/kindle/krx/collections/CollectionFilter;

    return-void
.end method
