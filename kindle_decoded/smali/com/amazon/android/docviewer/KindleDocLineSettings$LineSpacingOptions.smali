.class public final enum Lcom/amazon/android/docviewer/KindleDocLineSettings$LineSpacingOptions;
.super Ljava/lang/Enum;
.source "KindleDocLineSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/docviewer/KindleDocLineSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LineSpacingOptions"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/android/docviewer/KindleDocLineSettings$LineSpacingOptions;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/android/docviewer/KindleDocLineSettings$LineSpacingOptions;

.field public static final enum NARROW:Lcom/amazon/android/docviewer/KindleDocLineSettings$LineSpacingOptions;

.field public static final enum NORMAL:Lcom/amazon/android/docviewer/KindleDocLineSettings$LineSpacingOptions;

.field public static final enum WIDE:Lcom/amazon/android/docviewer/KindleDocLineSettings$LineSpacingOptions;


# instance fields
.field private final m_serializationValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 83
    new-instance v0, Lcom/amazon/android/docviewer/KindleDocLineSettings$LineSpacingOptions;

    const/4 v1, 0x0

    const-string v2, "NARROW"

    invoke-direct {v0, v2, v1, v1}, Lcom/amazon/android/docviewer/KindleDocLineSettings$LineSpacingOptions;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/android/docviewer/KindleDocLineSettings$LineSpacingOptions;->NARROW:Lcom/amazon/android/docviewer/KindleDocLineSettings$LineSpacingOptions;

    .line 84
    new-instance v0, Lcom/amazon/android/docviewer/KindleDocLineSettings$LineSpacingOptions;

    const/4 v2, 0x1

    const-string v3, "NORMAL"

    invoke-direct {v0, v3, v2, v2}, Lcom/amazon/android/docviewer/KindleDocLineSettings$LineSpacingOptions;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/android/docviewer/KindleDocLineSettings$LineSpacingOptions;->NORMAL:Lcom/amazon/android/docviewer/KindleDocLineSettings$LineSpacingOptions;

    .line 85
    new-instance v0, Lcom/amazon/android/docviewer/KindleDocLineSettings$LineSpacingOptions;

    const/4 v3, 0x2

    const-string v4, "WIDE"

    invoke-direct {v0, v4, v3, v3}, Lcom/amazon/android/docviewer/KindleDocLineSettings$LineSpacingOptions;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/android/docviewer/KindleDocLineSettings$LineSpacingOptions;->WIDE:Lcom/amazon/android/docviewer/KindleDocLineSettings$LineSpacingOptions;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/android/docviewer/KindleDocLineSettings$LineSpacingOptions;

    .line 82
    sget-object v5, Lcom/amazon/android/docviewer/KindleDocLineSettings$LineSpacingOptions;->NARROW:Lcom/amazon/android/docviewer/KindleDocLineSettings$LineSpacingOptions;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/android/docviewer/KindleDocLineSettings$LineSpacingOptions;->NORMAL:Lcom/amazon/android/docviewer/KindleDocLineSettings$LineSpacingOptions;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/android/docviewer/KindleDocLineSettings$LineSpacingOptions;->$VALUES:[Lcom/amazon/android/docviewer/KindleDocLineSettings$LineSpacingOptions;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 87
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 88
    iput p3, p0, Lcom/amazon/android/docviewer/KindleDocLineSettings$LineSpacingOptions;->m_serializationValue:I

    return-void
.end method

.method public static fromSerializationValue(I)Lcom/amazon/android/docviewer/KindleDocLineSettings$LineSpacingOptions;
    .locals 5

    .line 96
    invoke-static {}, Lcom/amazon/android/docviewer/KindleDocLineSettings$LineSpacingOptions;->values()[Lcom/amazon/android/docviewer/KindleDocLineSettings$LineSpacingOptions;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 97
    iget v4, v3, Lcom/amazon/android/docviewer/KindleDocLineSettings$LineSpacingOptions;->m_serializationValue:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 101
    :cond_1
    sget-object p0, Lcom/amazon/android/docviewer/KindleDocLineSettings$LineSpacingOptions;->NORMAL:Lcom/amazon/android/docviewer/KindleDocLineSettings$LineSpacingOptions;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/android/docviewer/KindleDocLineSettings$LineSpacingOptions;
    .locals 1

    .line 82
    const-class v0, Lcom/amazon/android/docviewer/KindleDocLineSettings$LineSpacingOptions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/android/docviewer/KindleDocLineSettings$LineSpacingOptions;

    return-object p0
.end method

.method public static values()[Lcom/amazon/android/docviewer/KindleDocLineSettings$LineSpacingOptions;
    .locals 1

    .line 82
    sget-object v0, Lcom/amazon/android/docviewer/KindleDocLineSettings$LineSpacingOptions;->$VALUES:[Lcom/amazon/android/docviewer/KindleDocLineSettings$LineSpacingOptions;

    invoke-virtual {v0}, [Lcom/amazon/android/docviewer/KindleDocLineSettings$LineSpacingOptions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/android/docviewer/KindleDocLineSettings$LineSpacingOptions;

    return-object v0
.end method


# virtual methods
.method public serializationValue()I
    .locals 1

    .line 92
    iget v0, p0, Lcom/amazon/android/docviewer/KindleDocLineSettings$LineSpacingOptions;->m_serializationValue:I

    return v0
.end method
