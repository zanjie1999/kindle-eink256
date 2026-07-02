.class public final enum Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;
.super Ljava/lang/Enum;
.source "KindleDocLineSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/docviewer/KindleDocLineSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TextAlignment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;

.field public static final enum JUSTIFY:Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;

.field public static final enum LEFT:Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;


# instance fields
.field private final m_serializationValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 26
    new-instance v0, Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;

    const/4 v1, 0x0

    const-string v2, "JUSTIFY"

    invoke-direct {v0, v2, v1, v1}, Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;->JUSTIFY:Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;

    .line 27
    new-instance v0, Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;

    const/4 v2, 0x1

    const-string v3, "LEFT"

    invoke-direct {v0, v3, v2, v2}, Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;->LEFT:Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;

    .line 25
    sget-object v4, Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;->JUSTIFY:Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;->$VALUES:[Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput p3, p0, Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;->m_serializationValue:I

    return-void
.end method

.method public static fromSerializationValue(I)Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;
    .locals 5

    .line 38
    invoke-static {}, Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;->values()[Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 39
    iget v4, v3, Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;->m_serializationValue:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 43
    :cond_1
    sget-object p0, Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;->JUSTIFY:Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;
    .locals 1

    .line 25
    const-class v0, Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;

    return-object p0
.end method

.method public static values()[Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;
    .locals 1

    .line 25
    sget-object v0, Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;->$VALUES:[Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;

    invoke-virtual {v0}, [Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;

    return-object v0
.end method


# virtual methods
.method public serializationValue()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;->m_serializationValue:I

    return v0
.end method
