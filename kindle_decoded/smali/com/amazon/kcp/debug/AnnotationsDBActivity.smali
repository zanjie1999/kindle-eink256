.class public Lcom/amazon/kcp/debug/AnnotationsDBActivity;
.super Lcom/amazon/kcp/redding/ReddingActivity;
.source "AnnotationsDBActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/debug/AnnotationsDBActivity$AnnotationDBAdapter;
    }
.end annotation


# static fields
.field private static final COLUMNS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private adapter:Lcom/amazon/kcp/debug/AnnotationsDBActivity$AnnotationDBAdapter;

.field private annotationListView:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 41
    const-class v0, Lcom/amazon/kcp/debug/AnnotationsDBActivity;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/debug/AnnotationsDBActivity;->TAG:Ljava/lang/String;

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "(\"USERID\" || \"BOOKID\" || \"TYPE\" || \"START_POS\" || \"END_POS\" || \"START_POS_LF\" || \"END_POS_LF\") as _id "

    aput-object v2, v0, v1

    .line 43
    sget-object v1, Lcom/amazon/kindle/annotation/AnnotationField;->USERID:Lcom/amazon/kindle/annotation/AnnotationField;

    .line 45
    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/kindle/annotation/AnnotationField;->BOOKID:Lcom/amazon/kindle/annotation/AnnotationField;

    .line 46
    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/kindle/annotation/AnnotationField;->BOOK_TEXT:Lcom/amazon/kindle/annotation/AnnotationField;

    .line 47
    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/kindle/annotation/AnnotationField;->TYPE:Lcom/amazon/kindle/annotation/AnnotationField;

    .line 48
    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/kindle/annotation/AnnotationField;->START_POS:Lcom/amazon/kindle/annotation/AnnotationField;

    .line 49
    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/kindle/annotation/AnnotationField;->END_POS:Lcom/amazon/kindle/annotation/AnnotationField;

    .line 50
    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/kindle/annotation/AnnotationField;->POS_START_PAGE:Lcom/amazon/kindle/annotation/AnnotationField;

    .line 51
    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/kindle/annotation/AnnotationField;->USER_TEXT:Lcom/amazon/kindle/annotation/AnnotationField;

    .line 52
    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/kindle/annotation/AnnotationField;->STATE:Lcom/amazon/kindle/annotation/AnnotationField;

    .line 53
    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/kindle/annotation/AnnotationField;->METADATA:Lcom/amazon/kindle/annotation/AnnotationField;

    .line 54
    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/kindle/annotation/AnnotationField;->START_POS_LF:Lcom/amazon/kindle/annotation/AnnotationField;

    .line 55
    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/kindle/annotation/AnnotationField;->END_POS_LF:Lcom/amazon/kindle/annotation/AnnotationField;

    .line 56
    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kcp/debug/AnnotationsDBActivity;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/amazon/kcp/redding/ReddingActivity;-><init>()V

    return-void
.end method

.method public static ConvertAnnotationTypeToString(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "Unknown"

    return-object p0

    :pswitch_0
    const-string p0, "MRPR"

    return-object p0

    :pswitch_1
    const-string p0, "CRP"

    return-object p0

    :pswitch_2
    const-string p0, "Graphical Highlight"

    return-object p0

    :pswitch_3
    const-string p0, "Popular Highlight"

    return-object p0

    :pswitch_4
    const-string p0, "Collection Tag"

    return-object p0

    :pswitch_5
    const-string p0, "Clipping"

    return-object p0

    :pswitch_6
    const-string p0, "LPR"

    return-object p0

    :pswitch_7
    const-string p0, "Highlight"

    return-object p0

    :pswitch_8
    const-string p0, "Note"

    return-object p0

    :pswitch_9
    const-string p0, "Bookmark"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .line 40
    sget-object v0, Lcom/amazon/kcp/debug/AnnotationsDBActivity;->COLUMNS:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected onPause()V
    .locals 2

    .line 107
    invoke-super {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->onPause()V

    .line 109
    iget-object v0, p0, Lcom/amazon/kcp/debug/AnnotationsDBActivity;->adapter:Lcom/amazon/kcp/debug/AnnotationsDBActivity$AnnotationDBAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v0, v1}, Lcom/amazon/kcp/debug/AnnotationsDBActivity$AnnotationDBAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/debug/AnnotationsDBActivity;->annotationListView:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    .line 114
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 10

    .line 64
    invoke-super {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->onResume()V

    .line 66
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    sget-object v0, Lcom/amazon/kcp/debug/AnnotationsDBActivity;->TAG:Ljava/lang/String;

    const-string v1, "Unable to start this activity in a non-debug build"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 71
    :cond_0
    sget v0, Lcom/amazon/kindle/atm/R$layout;->annotations_db:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 72
    sget v0, Lcom/amazon/kindle/atm/R$id;->annotation_list_view:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/amazon/kcp/debug/AnnotationsDBActivity;->annotationListView:Landroid/widget/ListView;

    const/4 v0, 0x1

    .line 75
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kindle/annotation/AnnotationDBHelper;->getInstance(Landroid/content/Context;)Lcom/amazon/kindle/annotation/AnnotationDBHelper;

    move-result-object v1

    .line 77
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v1, "DB was null, dawg"

    .line 79
    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 85
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 87
    invoke-interface {v3}, Lcom/amazon/kcp/reader/IReaderController;->currentBookInfo()Lcom/amazon/kindle/model/content/ILocalBookInfo;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Lcom/amazon/kcp/reader/IReaderController;->currentBookInfo()Lcom/amazon/kindle/model/content/ILocalBookInfo;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 88
    invoke-interface {v3}, Lcom/amazon/kcp/reader/IReaderController;->currentBookInfo()Lcom/amazon/kindle/model/content/ILocalBookInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    .line 89
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/amazon/kindle/annotation/AnnotationField;->BOOKID:Lcom/amazon/kindle/annotation/AnnotationField;

    invoke-virtual {v4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    move-object v5, v1

    const-string v3, "Annotations"

    .line 92
    sget-object v4, Lcom/amazon/kcp/debug/AnnotationsDBActivity;->COLUMNS:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 94
    new-instance v2, Lcom/amazon/kcp/debug/AnnotationsDBActivity$AnnotationDBAdapter;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p0, v1, v3}, Lcom/amazon/kcp/debug/AnnotationsDBActivity$AnnotationDBAdapter;-><init>(Lcom/amazon/kcp/debug/AnnotationsDBActivity;Landroid/content/Context;Landroid/database/Cursor;I)V

    iput-object v2, p0, Lcom/amazon/kcp/debug/AnnotationsDBActivity;->adapter:Lcom/amazon/kcp/debug/AnnotationsDBActivity$AnnotationDBAdapter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Couldn\'t connect to annotation DB"

    .line 96
    invoke-static {p0, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 97
    sget-object v0, Lcom/amazon/kcp/debug/AnnotationsDBActivity;->TAG:Ljava/lang/String;

    const-string v2, "Caught Exception when trying to connect to annotations DB: "

    invoke-static {v0, v2, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 100
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/debug/AnnotationsDBActivity;->annotationListView:Landroid/widget/ListView;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/amazon/kcp/debug/AnnotationsDBActivity;->adapter:Lcom/amazon/kcp/debug/AnnotationsDBActivity$AnnotationDBAdapter;

    if-eqz v1, :cond_3

    .line 101
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_3
    return-void
.end method
