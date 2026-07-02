.class public final enum Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;
.super Ljava/lang/Enum;
.source "KindleDocLineSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/docviewer/KindleDocLineSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Margin"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;

.field public static final enum NARROW:Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;

.field public static final enum NONE:Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;

.field public static final enum WIDE:Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;


# instance fields
.field private final m_serializationValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 54
    new-instance v0, Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1, v1}, Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;->NONE:Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;

    .line 55
    new-instance v0, Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;

    const/4 v2, 0x1

    const-string v3, "NARROW"

    invoke-direct {v0, v3, v2, v2}, Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;->NARROW:Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;

    .line 56
    new-instance v0, Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;

    const/4 v3, 0x2

    const-string v4, "WIDE"

    invoke-direct {v0, v4, v3, v3}, Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;->WIDE:Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;

    .line 53
    sget-object v5, Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;->NONE:Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;->NARROW:Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;->$VALUES:[Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 59
    iput p3, p0, Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;->m_serializationValue:I

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;)I
    .locals 0

    .line 53
    iget p0, p0, Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;->m_serializationValue:I

    return p0
.end method

.method public static fromSerializationValue(I)Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;
    .locals 5

    .line 67
    invoke-static {}, Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;->values()[Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 68
    iget v4, v3, Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;->m_serializationValue:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 72
    :cond_1
    sget-object p0, Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;->NONE:Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;
    .locals 1

    .line 53
    const-class v0, Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;

    return-object p0
.end method

.method public static values()[Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;
    .locals 1

    .line 53
    sget-object v0, Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;->$VALUES:[Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;

    invoke-virtual {v0}, [Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;

    return-object v0
.end method


# virtual methods
.method public serializationValue()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;->m_serializationValue:I

    return v0
.end method
