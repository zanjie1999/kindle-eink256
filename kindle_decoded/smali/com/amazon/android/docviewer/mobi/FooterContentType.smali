.class public Lcom/amazon/android/docviewer/mobi/FooterContentType;
.super Ljava/lang/Object;
.source "FooterContentType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private availableReadingProgressOptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;",
            ">;"
        }
    .end annotation
.end field

.field private dirty:Z

.field private refreshRequired:Z

.field private selectedReadingProgressOptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;",
            ">;"
        }
    .end annotation
.end field

.field private settings:Lcom/amazon/kcp/application/UserSettingsController;

.field private type:Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-class v0, Lcom/amazon/android/docviewer/mobi/FooterContentType;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/android/docviewer/mobi/FooterContentType;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/application/UserSettingsController;)V
    .locals 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/mobi/FooterContentType;->dirty:Z

    .line 44
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/mobi/FooterContentType;->refreshRequired:Z

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/FooterContentType;->selectedReadingProgressOptions:Ljava/util/List;

    .line 48
    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/FooterContentType;->availableReadingProgressOptions:Ljava/util/List;

    .line 51
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/FooterContentType;->settings:Lcom/amazon/kcp/application/UserSettingsController;

    .line 54
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/kcp/application/UserSettingsController;->getFooterContentType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;->valueOf(Ljava/lang/String;)Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/FooterContentType;->type:Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;

    .line 55
    invoke-static {}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;->initializeReadingProgressDefaults()V

    .line 56
    invoke-static {}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;->getSelectedReadingProgressOptions()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/FooterContentType;->selectedReadingProgressOptions:Ljava/util/List;

    .line 57
    invoke-static {}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;->getAvailableReadingProgressOptions()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/FooterContentType;->availableReadingProgressOptions:Ljava/util/List;

    .line 59
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/FooterContentType;->type:Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/FooterContentType;->type:Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;

    invoke-virtual {p0, v0}, Lcom/amazon/android/docviewer/mobi/FooterContentType;->getNextType(Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;)Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/FooterContentType;->type:Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 63
    :catch_0
    sget-object v0, Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;->TIME_TO_READ_CHAPTER:Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;

    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/FooterContentType;->type:Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;

    .line 64
    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/application/UserSettingsController;->setFooterContentType(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private getIndexOfNextRotatedType(Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;)I
    .locals 2

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getIndexOfNextRotatedType currentType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/FooterContentType;->availableReadingProgressOptions:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/FooterContentType;->availableReadingProgressOptions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 189
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/FooterContentType;->availableReadingProgressOptions:Ljava/util/List;

    add-int/lit8 p1, p1, 0x1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr p1, v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getIndexOfNextRotatedType nextAvailableType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/FooterContentType;->selectedReadingProgressOptions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 193
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/FooterContentType;->selectedReadingProgressOptions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 195
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getIndexOfNextRotatedType index:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return p1
.end method

.method private getNextSelectedType(Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;)Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;
    .locals 4

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNextSelectedType currentType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    sget-object v0, Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;->BLANK:Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;

    .line 157
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v1

    .line 158
    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/FooterContentType;->selectedReadingProgressOptions:Ljava/util/List;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    if-eqz v1, :cond_2

    .line 159
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/FooterContentType;->selectedReadingProgressOptions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 162
    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/FooterContentType;->selectedReadingProgressOptions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    rem-int/2addr v0, v2

    goto :goto_0

    .line 164
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/mobi/FooterContentType;->getIndexOfNextRotatedType(Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;)I

    move-result v0

    .line 166
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNextSelectedType nextIndex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/FooterContentType;->selectedReadingProgressOptions:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;

    .line 168
    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getTicrDocViewerEventHandler()Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 170
    invoke-virtual {v1}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->isLearningReadingSpeed()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;->TIME_TO_READ_CHAPTER:Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;

    if-ne p1, v1, :cond_1

    sget-object p1, Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;->TIME_TO_READ_BOOK:Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;

    if-ne v2, p1, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 172
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/FooterContentType;->selectedReadingProgressOptions:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    rem-int/2addr v0, p1

    .line 173
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/FooterContentType;->selectedReadingProgressOptions:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;

    goto :goto_1

    :cond_1
    move-object v0, v2

    .line 176
    :cond_2
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNextSelectedType nextSelectedType:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getNextType(Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;)Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;
    .locals 1

    .line 80
    sget-object v0, Lcom/amazon/kindle/dualreadingmode/ReadingMode;->BOOK_DEFAULT:Lcom/amazon/kindle/dualreadingmode/ReadingMode;

    invoke-virtual {p0, p1, v0}, Lcom/amazon/android/docviewer/mobi/FooterContentType;->getNextType(Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;Lcom/amazon/kindle/dualreadingmode/ReadingMode;)Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;

    move-result-object p1

    return-object p1
.end method

.method public getNextType(Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;Lcom/amazon/kindle/dualreadingmode/ReadingMode;)Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;
    .locals 1

    .line 89
    sget-object v0, Lcom/amazon/kindle/dualreadingmode/ReadingMode;->RECAPS:Lcom/amazon/kindle/dualreadingmode/ReadingMode;

    if-eq p2, v0, :cond_0

    .line 90
    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/mobi/FooterContentType;->getNextSelectedType(Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;)Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;

    move-result-object p1

    return-object p1

    .line 94
    :cond_0
    sget-object v0, Lcom/amazon/android/docviewer/mobi/FooterContentType$1;->$SwitchMap$com$amazon$android$docviewer$mobi$FooterContentType$Types:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 116
    sget-object p1, Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;->BLANK:Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;

    goto :goto_0

    .line 109
    :pswitch_0
    sget-object p1, Lcom/amazon/kindle/dualreadingmode/ReadingMode;->RECAPS:Lcom/amazon/kindle/dualreadingmode/ReadingMode;

    if-ne p2, p1, :cond_1

    .line 110
    sget-object p1, Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;->TIME_TO_READ_RECAPS:Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;

    goto :goto_0

    .line 112
    :cond_1
    sget-object p1, Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;->TIME_TO_READ_CHAPTER:Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;

    goto :goto_0

    .line 106
    :pswitch_1
    sget-object p1, Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;->BLANK:Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;

    goto :goto_0

    .line 102
    :pswitch_2
    sget-object p1, Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;->LOCATION:Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;

    goto :goto_0

    .line 99
    :pswitch_3
    sget-object p1, Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;->PAGE:Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;

    goto :goto_0

    .line 96
    :pswitch_4
    sget-object p1, Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;->TIME_TO_READ_BOOK:Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;

    :goto_0
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getType()Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/FooterContentType;->type:Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;

    return-object v0
.end method

.method public isDirty()Z
    .locals 1

    .line 123
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/mobi/FooterContentType;->dirty:Z

    return v0
.end method

.method public refreshRequired()Z
    .locals 1

    .line 135
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/mobi/FooterContentType;->refreshRequired:Z

    return v0
.end method

.method public setIsDirty(Z)V
    .locals 0

    .line 127
    iput-boolean p1, p0, Lcom/amazon/android/docviewer/mobi/FooterContentType;->dirty:Z

    return-void
.end method

.method public setRefreshRequired(Z)V
    .locals 0

    .line 143
    iput-boolean p1, p0, Lcom/amazon/android/docviewer/mobi/FooterContentType;->refreshRequired:Z

    return-void
.end method

.method public setType(Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;)V
    .locals 1

    .line 73
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/FooterContentType;->type:Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;

    .line 74
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/FooterContentType;->settings:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/application/UserSettingsController;->setFooterContentType(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 75
    iput-boolean p1, p0, Lcom/amazon/android/docviewer/mobi/FooterContentType;->dirty:Z

    return-void
.end method

.method public updateSelectedReadingProgressOptions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;",
            ">;)V"
        }
    .end annotation

    .line 151
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/FooterContentType;->selectedReadingProgressOptions:Ljava/util/List;

    return-void
.end method
