.class final enum Lcom/amazon/kindle/annotation/ui/NotesRenderer$IconVariant;
.super Ljava/lang/Enum;
.source "NotesRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/annotation/ui/NotesRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "IconVariant"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/annotation/ui/NotesRenderer$IconVariant;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/annotation/ui/NotesRenderer$IconVariant;

.field public static final enum DEFAULT:Lcom/amazon/kindle/annotation/ui/NotesRenderer$IconVariant;

.field public static final enum SEARCH:Lcom/amazon/kindle/annotation/ui/NotesRenderer$IconVariant;

.field public static final enum SEARCH_BLACK:Lcom/amazon/kindle/annotation/ui/NotesRenderer$IconVariant;


# instance fields
.field private final resourceId:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 164
    new-instance v0, Lcom/amazon/kindle/annotation/ui/NotesRenderer$IconVariant;

    sget v1, Lcom/amazon/kindle/krl/R$drawable;->ic_note_sm:I

    const/4 v2, 0x0

    const-string v3, "DEFAULT"

    invoke-direct {v0, v3, v2, v1}, Lcom/amazon/kindle/annotation/ui/NotesRenderer$IconVariant;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kindle/annotation/ui/NotesRenderer$IconVariant;->DEFAULT:Lcom/amazon/kindle/annotation/ui/NotesRenderer$IconVariant;

    .line 165
    new-instance v0, Lcom/amazon/kindle/annotation/ui/NotesRenderer$IconVariant;

    sget v1, Lcom/amazon/kindle/krl/R$drawable;->ic_note_sm_search:I

    const/4 v3, 0x1

    const-string v4, "SEARCH"

    invoke-direct {v0, v4, v3, v1}, Lcom/amazon/kindle/annotation/ui/NotesRenderer$IconVariant;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kindle/annotation/ui/NotesRenderer$IconVariant;->SEARCH:Lcom/amazon/kindle/annotation/ui/NotesRenderer$IconVariant;

    .line 166
    new-instance v0, Lcom/amazon/kindle/annotation/ui/NotesRenderer$IconVariant;

    sget v1, Lcom/amazon/kindle/krl/R$drawable;->ic_note_sm_search_black:I

    const/4 v4, 0x2

    const-string v5, "SEARCH_BLACK"

    invoke-direct {v0, v5, v4, v1}, Lcom/amazon/kindle/annotation/ui/NotesRenderer$IconVariant;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kindle/annotation/ui/NotesRenderer$IconVariant;->SEARCH_BLACK:Lcom/amazon/kindle/annotation/ui/NotesRenderer$IconVariant;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/amazon/kindle/annotation/ui/NotesRenderer$IconVariant;

    .line 163
    sget-object v5, Lcom/amazon/kindle/annotation/ui/NotesRenderer$IconVariant;->DEFAULT:Lcom/amazon/kindle/annotation/ui/NotesRenderer$IconVariant;

    aput-object v5, v1, v2

    sget-object v2, Lcom/amazon/kindle/annotation/ui/NotesRenderer$IconVariant;->SEARCH:Lcom/amazon/kindle/annotation/ui/NotesRenderer$IconVariant;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/amazon/kindle/annotation/ui/NotesRenderer$IconVariant;->$VALUES:[Lcom/amazon/kindle/annotation/ui/NotesRenderer$IconVariant;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 176
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 177
    iput p3, p0, Lcom/amazon/kindle/annotation/ui/NotesRenderer$IconVariant;->resourceId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/annotation/ui/NotesRenderer$IconVariant;
    .locals 1

    .line 163
    const-class v0, Lcom/amazon/kindle/annotation/ui/NotesRenderer$IconVariant;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/annotation/ui/NotesRenderer$IconVariant;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/annotation/ui/NotesRenderer$IconVariant;
    .locals 1

    .line 163
    sget-object v0, Lcom/amazon/kindle/annotation/ui/NotesRenderer$IconVariant;->$VALUES:[Lcom/amazon/kindle/annotation/ui/NotesRenderer$IconVariant;

    invoke-virtual {v0}, [Lcom/amazon/kindle/annotation/ui/NotesRenderer$IconVariant;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/annotation/ui/NotesRenderer$IconVariant;

    return-object v0
.end method


# virtual methods
.method getResourceId()I
    .locals 1

    .line 188
    iget v0, p0, Lcom/amazon/kindle/annotation/ui/NotesRenderer$IconVariant;->resourceId:I

    return v0
.end method
