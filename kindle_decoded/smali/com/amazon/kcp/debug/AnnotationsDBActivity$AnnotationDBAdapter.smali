.class Lcom/amazon/kcp/debug/AnnotationsDBActivity$AnnotationDBAdapter;
.super Landroid/widget/CursorAdapter;
.source "AnnotationsDBActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/debug/AnnotationsDBActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnnotationDBAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/debug/AnnotationsDBActivity;

.field private visibleObjects:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/krx/content/images/KRXDisposableObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/debug/AnnotationsDBActivity;Landroid/content/Context;Landroid/database/Cursor;I)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/amazon/kcp/debug/AnnotationsDBActivity$AnnotationDBAdapter;->this$0:Lcom/amazon/kcp/debug/AnnotationsDBActivity;

    .line 122
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 119
    new-instance p1, Ljava/util/HashSet;

    const/4 p2, 0x5

    invoke-direct {p1, p2}, Ljava/util/HashSet;-><init>(I)V

    iput-object p1, p0, Lcom/amazon/kcp/debug/AnnotationsDBActivity$AnnotationDBAdapter;->visibleObjects:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 6

    .line 132
    sget p2, Lcom/amazon/kindle/atm/R$id;->text_one:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 133
    sget v0, Lcom/amazon/kindle/atm/R$id;->image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 134
    sget v0, Lcom/amazon/kindle/atm/R$id;->frame:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    .line 136
    sget v0, Lcom/amazon/kindle/atm/R$id;->annotation_activity_view_container:I

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 137
    instance-of v1, v0, Lcom/amazon/kindle/krx/content/images/KRXDisposableObject;

    if-eqz v1, :cond_0

    .line 138
    check-cast v0, Lcom/amazon/kindle/krx/content/images/KRXDisposableObject;

    .line 139
    invoke-virtual {v0}, Lcom/amazon/kindle/krx/content/images/KRXDisposableObject;->dispose()V

    .line 140
    iget-object v1, p0, Lcom/amazon/kcp/debug/AnnotationsDBActivity$AnnotationDBAdapter;->visibleObjects:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 142
    :cond_0
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 144
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, -0x1

    .line 149
    :goto_0
    invoke-static {}, Lcom/amazon/kcp/debug/AnnotationsDBActivity;->access$000()[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-ge v1, v4, :cond_4

    .line 150
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/amazon/kcp/debug/AnnotationsDBActivity;->access$000()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v4, 0x4

    if-eq v1, v4, :cond_3

    const/4 v4, 0x5

    if-eq v1, v4, :cond_1

    const/16 v4, 0x9

    if-eq v1, v4, :cond_2

    .line 170
    :try_start_0
    invoke-static {}, Lcom/amazon/kcp/debug/AnnotationsDBActivity;->access$000()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 162
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/debug/AnnotationsDBActivity;->access$000()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 163
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 166
    :cond_2
    new-instance v4, Ljava/lang/String;

    invoke-static {}, Lcom/amazon/kcp/debug/AnnotationsDBActivity;->access$000()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    goto :goto_1

    .line 156
    :cond_3
    invoke-static {}, Lcom/amazon/kcp/debug/AnnotationsDBActivity;->access$000()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 157
    invoke-static {v4}, Lcom/amazon/kcp/debug/AnnotationsDBActivity;->ConvertAnnotationTypeToString(I)Ljava/lang/String;

    move-result-object v4

    .line 173
    :goto_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string v4, "Error when reading column"

    .line 175
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    const-string v4, "\n"

    .line 177
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 180
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eq v3, v2, :cond_6

    .line 192
    new-instance p2, Lcom/amazon/kindle/model/Annotations/IntPosition;

    invoke-direct {p2, v3}, Lcom/amazon/kindle/model/Annotations/IntPosition;-><init>(I)V

    .line 193
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p3

    invoke-interface {p3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p3

    if-eqz p3, :cond_5

    .line 194
    invoke-interface {p3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object p3

    invoke-interface {p3}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookContent()Lcom/amazon/kindle/krx/content/IBookContent;

    move-result-object p3

    goto :goto_3

    :cond_5
    const/4 p3, 0x0

    :goto_3
    if-eqz p3, :cond_6

    const/16 v0, 0xc8

    .line 196
    invoke-interface {p3, p2, v0, v0}, Lcom/amazon/kindle/krx/content/IBookContent;->getPageThumbnailView(Lcom/amazon/kindle/krx/reader/IPosition;II)Lcom/amazon/kindle/krx/content/images/KRXDisposableObject;

    move-result-object p2

    .line 197
    invoke-virtual {p2}, Lcom/amazon/kindle/krx/content/images/KRXDisposableObject;->getObject()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 198
    sget p3, Lcom/amazon/kindle/atm/R$id;->annotation_activity_view_container:I

    invoke-virtual {p1, p3, p2}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 199
    iget-object p1, p0, Lcom/amazon/kcp/debug/AnnotationsDBActivity$AnnotationDBAdapter;->visibleObjects:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_6
    return-void
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 1

    .line 206
    invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 207
    iget-object p1, p0, Lcom/amazon/kcp/debug/AnnotationsDBActivity$AnnotationDBAdapter;->visibleObjects:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/content/images/KRXDisposableObject;

    .line 208
    invoke-virtual {v0}, Lcom/amazon/kindle/krx/content/images/KRXDisposableObject;->dispose()V

    goto :goto_0

    .line 210
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/debug/AnnotationsDBActivity$AnnotationDBAdapter;->visibleObjects:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 127
    sget p2, Lcom/amazon/kindle/atm/R$layout;->annotations_db_cell:I

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
