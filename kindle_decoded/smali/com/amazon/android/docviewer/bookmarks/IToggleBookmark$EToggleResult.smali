.class public final enum Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark$EToggleResult;
.super Ljava/lang/Enum;
.source "IToggleBookmark.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EToggleResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark$EToggleResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark$EToggleResult;

.field public static final enum Added:Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark$EToggleResult;

.field public static final enum Deleted:Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark$EToggleResult;

.field public static final enum Error:Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark$EToggleResult;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 11
    new-instance v0, Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark$EToggleResult;

    const/4 v1, 0x0

    const-string v2, "Error"

    invoke-direct {v0, v2, v1}, Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark$EToggleResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark$EToggleResult;->Error:Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark$EToggleResult;

    new-instance v0, Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark$EToggleResult;

    const/4 v2, 0x1

    const-string v3, "Added"

    invoke-direct {v0, v3, v2}, Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark$EToggleResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark$EToggleResult;->Added:Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark$EToggleResult;

    new-instance v0, Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark$EToggleResult;

    const/4 v3, 0x2

    const-string v4, "Deleted"

    invoke-direct {v0, v4, v3}, Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark$EToggleResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark$EToggleResult;->Deleted:Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark$EToggleResult;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark$EToggleResult;

    .line 10
    sget-object v5, Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark$EToggleResult;->Error:Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark$EToggleResult;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark$EToggleResult;->Added:Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark$EToggleResult;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark$EToggleResult;->$VALUES:[Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark$EToggleResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark$EToggleResult;
    .locals 1

    .line 10
    const-class v0, Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark$EToggleResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark$EToggleResult;

    return-object p0
.end method

.method public static values()[Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark$EToggleResult;
    .locals 1

    .line 10
    sget-object v0, Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark$EToggleResult;->$VALUES:[Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark$EToggleResult;

    invoke-virtual {v0}, [Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark$EToggleResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark$EToggleResult;

    return-object v0
.end method
