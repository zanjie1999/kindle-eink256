.class public Lcom/amazon/kcp/library/RenameCollectionDialogFragment;
.super Lcom/amazon/kcp/library/LibraryDialogFragment;
.source "RenameCollectionDialogFragment.java"


# static fields
.field private static final COLLECTION_ID_KEY:Ljava/lang/String; = "COLLECTION_ID"


# instance fields
.field private collection:Lcom/amazon/kindle/collections/dto/CollectionDTO;

.field private collectionNameWatcher:Landroid/text/TextWatcher;

.field private nameDeduper:Lcom/amazon/kindle/collections/util/NameDedupeStrategy;

.field private newCollectionName:Landroid/widget/EditText;

.field private phoneticSpelling:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/amazon/kcp/library/LibraryDialogFragment;-><init>()V

    .line 45
    new-instance v0, Lcom/amazon/kcp/library/RenameCollectionDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/RenameCollectionDialogFragment$1;-><init>(Lcom/amazon/kcp/library/RenameCollectionDialogFragment;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/RenameCollectionDialogFragment;->collectionNameWatcher:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/library/RenameCollectionDialogFragment;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/amazon/kcp/library/RenameCollectionDialogFragment;->renameCollection()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/amazon/kcp/library/RenameCollectionDialogFragment;
    .locals 3

    .line 159
    new-instance v0, Lcom/amazon/kcp/library/RenameCollectionDialogFragment;

    invoke-direct {v0}, Lcom/amazon/kcp/library/RenameCollectionDialogFragment;-><init>()V

    .line 160
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "COLLECTION_ID"

    .line 161
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private renameCollection()V
    .locals 7

    .line 116
    iget-object v0, p0, Lcom/amazon/kcp/library/RenameCollectionDialogFragment;->newCollectionName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 117
    iget-object v1, p0, Lcom/amazon/kcp/library/RenameCollectionDialogFragment;->phoneticSpelling:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 119
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    iget-object v2, p0, Lcom/amazon/kcp/library/RenameCollectionDialogFragment;->collection:Lcom/amazon/kindle/collections/dto/CollectionDTO;

    if-eqz v2, :cond_4

    .line 120
    new-instance v2, Lcom/amazon/kindle/collections/util/PronounceableName;

    invoke-direct {v2, v0, v1}, Lcom/amazon/kindle/collections/util/PronounceableName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    new-instance v3, Lcom/amazon/kindle/collections/util/PronounceableName;

    iget-object v4, p0, Lcom/amazon/kcp/library/RenameCollectionDialogFragment;->collection:Lcom/amazon/kindle/collections/dto/CollectionDTO;

    invoke-virtual {v4}, Lcom/amazon/kindle/collections/dto/CollectionDTO;->getTitle()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/amazon/kcp/library/RenameCollectionDialogFragment;->collection:Lcom/amazon/kindle/collections/dto/CollectionDTO;

    invoke-virtual {v5}, Lcom/amazon/kindle/collections/dto/CollectionDTO;->getTitlePronunciation()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/amazon/kindle/collections/util/PronounceableName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-virtual {v2, v3}, Lcom/amazon/kindle/collections/util/PronounceableName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 123
    iget-object v2, p0, Lcom/amazon/kcp/library/RenameCollectionDialogFragment;->phoneticSpelling:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, ""

    .line 129
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    .line 130
    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IAuthenticationManager;->getAccountInfo()Lcom/amazon/kindle/services/authentication/IAccountInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/services/authentication/IAccountInfo;->getId()Ljava/lang/String;

    move-result-object v2

    .line 131
    invoke-static {}, Lcom/amazon/kindle/collections/CollectionsManagerHolder;->getInstance()Lcom/amazon/kindle/collections/ICollectionsManager;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/amazon/kindle/collections/ICollectionsManager;->getCollectionsByUserId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 132
    new-instance v3, Ljava/util/HashSet;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 133
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kindle/collections/dto/ICollection;

    .line 135
    iget-object v5, p0, Lcom/amazon/kcp/library/RenameCollectionDialogFragment;->collection:Lcom/amazon/kindle/collections/dto/CollectionDTO;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 138
    :cond_1
    new-instance v5, Lcom/amazon/kindle/collections/util/PronounceableName;

    invoke-interface {v4}, Lcom/amazon/kindle/collections/dto/ICollection;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4}, Lcom/amazon/kindle/collections/dto/ICollection;->getTitlePronunciation()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v6, v4}, Lcom/amazon/kindle/collections/util/PronounceableName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 140
    :cond_2
    new-instance v2, Lcom/amazon/kindle/collections/util/PronounceableName;

    invoke-direct {v2, v0, v1}, Lcom/amazon/kindle/collections/util/PronounceableName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/amazon/kcp/library/RenameCollectionDialogFragment;->nameDeduper:Lcom/amazon/kindle/collections/util/NameDedupeStrategy;

    invoke-interface {v0, v2, v3}, Lcom/amazon/kindle/collections/util/NameDedupeStrategy;->dedupe(Lcom/amazon/kindle/collections/util/PronounceableName;Ljava/util/Collection;)Lcom/amazon/kindle/collections/util/PronounceableName;

    move-result-object v0

    .line 143
    iget-object v1, p0, Lcom/amazon/kcp/library/RenameCollectionDialogFragment;->collection:Lcom/amazon/kindle/collections/dto/CollectionDTO;

    invoke-virtual {v0}, Lcom/amazon/kindle/collections/util/PronounceableName;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/collections/dto/CollectionDTO;->setTitle(Ljava/lang/String;)V

    .line 144
    iget-object v1, p0, Lcom/amazon/kcp/library/RenameCollectionDialogFragment;->collection:Lcom/amazon/kindle/collections/dto/CollectionDTO;

    invoke-virtual {v0}, Lcom/amazon/kindle/collections/util/PronounceableName;->getPronunciation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/collections/dto/CollectionDTO;->setTitlePronunciation(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/amazon/kcp/library/RenameCollectionDialogFragment;->collection:Lcom/amazon/kindle/collections/dto/CollectionDTO;

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getSortFriendlyFormatter()Lcom/amazon/kindle/utils/ISortFriendlyFormatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/collections/dto/CollectionDTO;->updateSortableTitle(Lcom/amazon/kindle/utils/ISortFriendlyFormatter;)V

    .line 146
    invoke-static {}, Lcom/amazon/kindle/collections/CollectionsManagerHolder;->getInstance()Lcom/amazon/kindle/collections/ICollectionsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/RenameCollectionDialogFragment;->collection:Lcom/amazon/kindle/collections/dto/CollectionDTO;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/collections/ICollectionsManager;->updateCollection(Lcom/amazon/kindle/collections/dto/ICollection;)Z

    .line 149
    :cond_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 150
    iget-object v1, p0, Lcom/amazon/kcp/library/RenameCollectionDialogFragment;->collection:Lcom/amazon/kindle/collections/dto/CollectionDTO;

    invoke-virtual {v1}, Lcom/amazon/kindle/collections/dto/CollectionDTO;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CollectionID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 153
    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v1

    const-string v2, "Collections"

    const-string v3, "RenameCollection"

    invoke-interface {v1, v2, v3, v0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    .line 69
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 70
    invoke-static {}, Lcom/amazon/kindle/collections/CollectionsManagerHolder;->getInstance()Lcom/amazon/kindle/collections/ICollectionsManager;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "COLLECTION_ID"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/amazon/kindle/collections/ICollectionsManager;->getCollectionById(Ljava/lang/String;)Lcom/amazon/kindle/collections/dto/ICollection;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kindle/collections/dto/CollectionDTO;->valueOf(Lcom/amazon/kindle/collections/dto/ICollection;)Lcom/amazon/kindle/collections/dto/CollectionDTO;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kcp/library/RenameCollectionDialogFragment;->collection:Lcom/amazon/kindle/collections/dto/CollectionDTO;

    const/4 v1, 0x0

    .line 72
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setIcon(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 73
    sget v2, Lcom/amazon/kindle/librarymodule/R$string;->rename_collection_prompt:I

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 75
    sget v2, Lcom/amazon/kindle/librarymodule/R$layout;->ruby_dialog_collection_name:I

    .line 76
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 77
    sget v3, Lcom/amazon/kindle/librarymodule/R$id;->collection_name:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/amazon/kcp/library/RenameCollectionDialogFragment;->newCollectionName:Landroid/widget/EditText;

    .line 78
    sget v3, Lcom/amazon/kindle/librarymodule/R$id;->phonetic_name:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/amazon/kcp/library/RenameCollectionDialogFragment;->phoneticSpelling:Landroid/widget/EditText;

    .line 79
    new-instance v3, Lcom/amazon/kindle/collections/util/NumericSuffixNameDedupeStrategy;

    invoke-direct {v3}, Lcom/amazon/kindle/collections/util/NumericSuffixNameDedupeStrategy;-><init>()V

    iput-object v3, p0, Lcom/amazon/kcp/library/RenameCollectionDialogFragment;->nameDeduper:Lcom/amazon/kindle/collections/util/NameDedupeStrategy;

    if-nez p1, :cond_0

    .line 82
    iget-object p1, p0, Lcom/amazon/kcp/library/RenameCollectionDialogFragment;->collection:Lcom/amazon/kindle/collections/dto/CollectionDTO;

    if-eqz p1, :cond_0

    .line 83
    iget-object v3, p0, Lcom/amazon/kcp/library/RenameCollectionDialogFragment;->newCollectionName:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/amazon/kindle/collections/dto/CollectionDTO;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object p1, p0, Lcom/amazon/kcp/library/RenameCollectionDialogFragment;->phoneticSpelling:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/amazon/kcp/library/RenameCollectionDialogFragment;->collection:Lcom/amazon/kindle/collections/dto/CollectionDTO;

    invoke-virtual {v3}, Lcom/amazon/kindle/collections/dto/CollectionDTO;->getTitlePronunciation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 88
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/library/RenameCollectionDialogFragment;->newCollectionName:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 89
    iget-object p1, p0, Lcom/amazon/kcp/library/RenameCollectionDialogFragment;->newCollectionName:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/amazon/kcp/library/RenameCollectionDialogFragment;->collectionNameWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p1, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 91
    invoke-static {}, Lcom/amazon/kcp/util/LibraryUtils;->shouldShowPhoneticEntry()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 92
    iget-object p1, p0, Lcom/amazon/kcp/library/RenameCollectionDialogFragment;->phoneticSpelling:Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 95
    :cond_1
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 97
    sget p1, Lcom/amazon/kindle/librarymodule/R$string;->rename:I

    new-instance v1, Lcom/amazon/kcp/library/RenameCollectionDialogFragment$2;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/library/RenameCollectionDialogFragment$2;-><init>(Lcom/amazon/kcp/library/RenameCollectionDialogFragment;)V

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 104
    sget p1, Lcom/amazon/kindle/librarymodule/R$string;->cancel:I

    invoke-virtual {v0, p1, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 106
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public onStart()V
    .locals 2

    .line 111
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 112
    iget-object v0, p0, Lcom/amazon/kcp/library/RenameCollectionDialogFragment;->collectionNameWatcher:Landroid/text/TextWatcher;

    iget-object v1, p0, Lcom/amazon/kcp/library/RenameCollectionDialogFragment;->newCollectionName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/text/TextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    return-void
.end method
