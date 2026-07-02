.class final enum Lcom/amazon/kcp/library/LibraryContentListener$CompareResult;
.super Ljava/lang/Enum;
.source "LibraryContentListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/LibraryContentListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CompareResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/library/LibraryContentListener$CompareResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/library/LibraryContentListener$CompareResult;

.field public static final enum OTHER_FIELD_CHANGED:Lcom/amazon/kcp/library/LibraryContentListener$CompareResult;

.field public static final enum SAME:Lcom/amazon/kcp/library/LibraryContentListener$CompareResult;

.field public static final enum SORT_OR_FILTER_FIELD_CHANGED:Lcom/amazon/kcp/library/LibraryContentListener$CompareResult;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 35
    new-instance v0, Lcom/amazon/kcp/library/LibraryContentListener$CompareResult;

    const/4 v1, 0x0

    const-string v2, "SAME"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kcp/library/LibraryContentListener$CompareResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/library/LibraryContentListener$CompareResult;->SAME:Lcom/amazon/kcp/library/LibraryContentListener$CompareResult;

    new-instance v0, Lcom/amazon/kcp/library/LibraryContentListener$CompareResult;

    const/4 v2, 0x1

    const-string v3, "SORT_OR_FILTER_FIELD_CHANGED"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kcp/library/LibraryContentListener$CompareResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/library/LibraryContentListener$CompareResult;->SORT_OR_FILTER_FIELD_CHANGED:Lcom/amazon/kcp/library/LibraryContentListener$CompareResult;

    new-instance v0, Lcom/amazon/kcp/library/LibraryContentListener$CompareResult;

    const/4 v3, 0x2

    const-string v4, "OTHER_FIELD_CHANGED"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kcp/library/LibraryContentListener$CompareResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/library/LibraryContentListener$CompareResult;->OTHER_FIELD_CHANGED:Lcom/amazon/kcp/library/LibraryContentListener$CompareResult;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/kcp/library/LibraryContentListener$CompareResult;

    .line 34
    sget-object v5, Lcom/amazon/kcp/library/LibraryContentListener$CompareResult;->SAME:Lcom/amazon/kcp/library/LibraryContentListener$CompareResult;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/kcp/library/LibraryContentListener$CompareResult;->SORT_OR_FILTER_FIELD_CHANGED:Lcom/amazon/kcp/library/LibraryContentListener$CompareResult;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/kcp/library/LibraryContentListener$CompareResult;->$VALUES:[Lcom/amazon/kcp/library/LibraryContentListener$CompareResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/library/LibraryContentListener$CompareResult;
    .locals 1

    .line 34
    const-class v0, Lcom/amazon/kcp/library/LibraryContentListener$CompareResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/library/LibraryContentListener$CompareResult;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/library/LibraryContentListener$CompareResult;
    .locals 1

    .line 34
    sget-object v0, Lcom/amazon/kcp/library/LibraryContentListener$CompareResult;->$VALUES:[Lcom/amazon/kcp/library/LibraryContentListener$CompareResult;

    invoke-virtual {v0}, [Lcom/amazon/kcp/library/LibraryContentListener$CompareResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/library/LibraryContentListener$CompareResult;

    return-object v0
.end method
