.class Lcom/amazon/klo/KindleLearningObjectActivity$ActivityState;
.super Ljava/lang/Object;
.source "KindleLearningObjectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/klo/KindleLearningObjectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActivityState"
.end annotation


# static fields
.field private static final ACTIVITY_STATE:Ljava/lang/String; = "kindleLearningObjectActivityState"

.field private static final CURRENT_PAGE_END_POSITION:Ljava/lang/String; = "currentPageEndPosition"

.field private static final CURRENT_PAGE_START_POSITION:Ljava/lang/String; = "currentPageStartPosition"

.field private static final INVALID_POSITION:I = -0x1

.field private static final SCROLL_STATE:Ljava/lang/String; = "scrollState"

.field private static final SELECTED_CHAPTER_POSITION:Ljava/lang/String; = "selectedChapterPosition"


# instance fields
.field currentPageEndPosition:Ljava/lang/String;

.field currentPageStartPosition:Ljava/lang/String;

.field scrollState:Landroid/os/Parcelable;

.field selectedChapterPosition:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 676
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 700
    iput v0, p0, Lcom/amazon/klo/KindleLearningObjectActivity$ActivityState;->selectedChapterPosition:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/klo/KindleLearningObjectActivity$1;)V
    .locals 0

    .line 676
    invoke-direct {p0}, Lcom/amazon/klo/KindleLearningObjectActivity$ActivityState;-><init>()V

    return-void
.end method

.method static varargs loadFromBundles([Landroid/os/Bundle;)Lcom/amazon/klo/KindleLearningObjectActivity$ActivityState;
    .locals 5

    .line 712
    new-instance v0, Lcom/amazon/klo/KindleLearningObjectActivity$ActivityState;

    invoke-direct {v0}, Lcom/amazon/klo/KindleLearningObjectActivity$ActivityState;-><init>()V

    .line 713
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :cond_0
    const-string v4, "kindleLearningObjectActivityState"

    .line 715
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    :goto_1
    if-eqz v3, :cond_1

    const-string p0, "currentPageStartPosition"

    .line 718
    invoke-virtual {v3, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/amazon/klo/KindleLearningObjectActivity$ActivityState;->currentPageStartPosition:Ljava/lang/String;

    const-string p0, "currentPageEndPosition"

    .line 719
    invoke-virtual {v3, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/amazon/klo/KindleLearningObjectActivity$ActivityState;->currentPageEndPosition:Ljava/lang/String;

    const/4 p0, -0x1

    const-string/jumbo v1, "selectedChapterPosition"

    .line 720
    invoke-virtual {v3, v1, p0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    iput p0, v0, Lcom/amazon/klo/KindleLearningObjectActivity$ActivityState;->selectedChapterPosition:I

    const-string/jumbo p0, "scrollState"

    .line 721
    invoke-virtual {v3, p0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    iput-object p0, v0, Lcom/amazon/klo/KindleLearningObjectActivity$ActivityState;->scrollState:Landroid/os/Parcelable;

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-object v0
.end method


# virtual methods
.method asBundle()Landroid/os/Bundle;
    .locals 4

    .line 731
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 732
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 734
    iget-object v2, p0, Lcom/amazon/klo/KindleLearningObjectActivity$ActivityState;->currentPageStartPosition:Ljava/lang/String;

    const-string v3, "currentPageStartPosition"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    iget-object v2, p0, Lcom/amazon/klo/KindleLearningObjectActivity$ActivityState;->currentPageEndPosition:Ljava/lang/String;

    const-string v3, "currentPageEndPosition"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    iget v2, p0, Lcom/amazon/klo/KindleLearningObjectActivity$ActivityState;->selectedChapterPosition:I

    const-string/jumbo v3, "selectedChapterPosition"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 737
    iget-object v2, p0, Lcom/amazon/klo/KindleLearningObjectActivity$ActivityState;->scrollState:Landroid/os/Parcelable;

    const-string/jumbo v3, "scrollState"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "kindleLearningObjectActivityState"

    .line 739
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 746
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{\n\tstart: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/klo/KindleLearningObjectActivity$ActivityState;->currentPageStartPosition:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n,\tend: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/klo/KindleLearningObjectActivity$ActivityState;->currentPageEndPosition:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",\n\tchapter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/klo/KindleLearningObjectActivity$ActivityState;->selectedChapterPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n\tscrollState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/klo/KindleLearningObjectActivity$ActivityState;->scrollState:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
