.class public Lcom/amazon/krf/platform/element/LinkPageElement;
.super Lcom/amazon/krf/platform/element/TextPageElement;
.source "LinkPageElement.java"


# static fields
.field public static final NOTE_TYPE_CHAPTER_NOTE:I = 0x4

.field public static final NOTE_TYPE_END_NOTE:I = 0x2

.field public static final NOTE_TYPE_FOOT_NOTE:I = 0x10

.field public static final NOTE_TYPE_NONE:I = 0x1

.field public static final NOTE_TYPE_SIDE_NOTE:I = 0x8


# instance fields
.field private mInternalEndTarget:Lcom/amazon/krf/platform/Position;

.field private mInternalTarget:Lcom/amazon/krf/platform/Position;

.field private mIsExternal:Z

.field private mIsNote:Z

.field private mNoteType:I

.field private mTargetText:Ljava/lang/String;

.field private mURI:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazon/krf/platform/PositionRange;[Landroid/graphics/RectF;Ljava/lang/String;Ljava/lang/String;ZLcom/amazon/krf/platform/Position;Lcom/amazon/krf/platform/Position;Ljava/lang/String;ZI)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/krf/platform/element/TextPageElement;-><init>(Lcom/amazon/krf/platform/PositionRange;[Landroid/graphics/RectF;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Lcom/amazon/krf/platform/element/LinkPageElement;->mURI:Ljava/lang/String;

    const/4 p2, 0x0

    .line 22
    iput-boolean p2, p0, Lcom/amazon/krf/platform/element/LinkPageElement;->mIsExternal:Z

    .line 23
    iput-object p1, p0, Lcom/amazon/krf/platform/element/LinkPageElement;->mInternalTarget:Lcom/amazon/krf/platform/Position;

    .line 24
    iput-object p1, p0, Lcom/amazon/krf/platform/element/LinkPageElement;->mInternalEndTarget:Lcom/amazon/krf/platform/Position;

    .line 25
    iput-object p1, p0, Lcom/amazon/krf/platform/element/LinkPageElement;->mTargetText:Ljava/lang/String;

    .line 26
    iput-boolean p2, p0, Lcom/amazon/krf/platform/element/LinkPageElement;->mIsNote:Z

    const/4 p1, 0x1

    .line 27
    iput p1, p0, Lcom/amazon/krf/platform/element/LinkPageElement;->mNoteType:I

    .line 44
    iput-object p4, p0, Lcom/amazon/krf/platform/element/LinkPageElement;->mURI:Ljava/lang/String;

    .line 45
    iput-boolean p5, p0, Lcom/amazon/krf/platform/element/LinkPageElement;->mIsExternal:Z

    .line 46
    iput-object p6, p0, Lcom/amazon/krf/platform/element/LinkPageElement;->mInternalTarget:Lcom/amazon/krf/platform/Position;

    .line 47
    iput-object p7, p0, Lcom/amazon/krf/platform/element/LinkPageElement;->mInternalEndTarget:Lcom/amazon/krf/platform/Position;

    .line 48
    iput-object p8, p0, Lcom/amazon/krf/platform/element/LinkPageElement;->mTargetText:Ljava/lang/String;

    .line 49
    iput-boolean p9, p0, Lcom/amazon/krf/platform/element/LinkPageElement;->mIsNote:Z

    .line 50
    iput p10, p0, Lcom/amazon/krf/platform/element/LinkPageElement;->mNoteType:I

    return-void
.end method


# virtual methods
.method public getInternalEndTarget()Lcom/amazon/krf/platform/Position;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/amazon/krf/platform/element/LinkPageElement;->mInternalEndTarget:Lcom/amazon/krf/platform/Position;

    return-object v0
.end method

.method public getInternalTarget()Lcom/amazon/krf/platform/Position;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/amazon/krf/platform/element/LinkPageElement;->mInternalTarget:Lcom/amazon/krf/platform/Position;

    return-object v0
.end method

.method public getNoteType()I
    .locals 1

    .line 97
    iget v0, p0, Lcom/amazon/krf/platform/element/LinkPageElement;->mNoteType:I

    return v0
.end method

.method public getTargetText()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/amazon/krf/platform/element/LinkPageElement;->mTargetText:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public getURI()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/amazon/krf/platform/element/LinkPageElement;->mURI:Ljava/lang/String;

    return-object v0
.end method

.method public isExternal()Z
    .locals 1

    .line 67
    iget-boolean v0, p0, Lcom/amazon/krf/platform/element/LinkPageElement;->mIsExternal:Z

    return v0
.end method

.method public isNote()Z
    .locals 1

    .line 89
    iget-boolean v0, p0, Lcom/amazon/krf/platform/element/LinkPageElement;->mIsNote:Z

    return v0
.end method

.method public setInternalEndTarget(Lcom/amazon/krf/platform/Position;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/amazon/krf/platform/element/LinkPageElement;->mInternalEndTarget:Lcom/amazon/krf/platform/Position;

    return-void
.end method

.method public setInternalTarget(Lcom/amazon/krf/platform/Position;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/amazon/krf/platform/element/LinkPageElement;->mInternalTarget:Lcom/amazon/krf/platform/Position;

    return-void
.end method

.method public setIsExternal(Z)V
    .locals 0

    .line 71
    iput-boolean p1, p0, Lcom/amazon/krf/platform/element/LinkPageElement;->mIsExternal:Z

    return-void
.end method

.method public setIsNote(Z)V
    .locals 0

    .line 93
    iput-boolean p1, p0, Lcom/amazon/krf/platform/element/LinkPageElement;->mIsNote:Z

    return-void
.end method

.method public setNoteType(I)V
    .locals 0

    .line 101
    iput p1, p0, Lcom/amazon/krf/platform/element/LinkPageElement;->mNoteType:I

    return-void
.end method

.method public setTargetText(Ljava/lang/String;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/amazon/krf/platform/element/LinkPageElement;->mTargetText:Ljava/lang/String;

    return-void
.end method

.method public setURI(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/amazon/krf/platform/element/LinkPageElement;->mURI:Ljava/lang/String;

    return-void
.end method
