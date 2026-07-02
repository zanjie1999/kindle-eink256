.class public Lcom/amazon/ea/sidecar/def/data/ArabicLanguageHelper;
.super Ljava/lang/Object;
.source "ArabicLanguageHelper.java"


# static fields
.field private static final ARABIC_CHAR_SET:[Ljava/lang/Character$UnicodeBlock;

.field private static final ARABIC_SET:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Character$UnicodeBlock;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Character$UnicodeBlock;

    .line 14
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->ARABIC:Ljava/lang/Character$UnicodeBlock;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->ARABIC_PRESENTATION_FORMS_A:Ljava/lang/Character$UnicodeBlock;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->ARABIC_PRESENTATION_FORMS_B:Ljava/lang/Character$UnicodeBlock;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->ARABIC_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/ea/sidecar/def/data/ArabicLanguageHelper;->ARABIC_CHAR_SET:[Ljava/lang/Character$UnicodeBlock;

    .line 18
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lcom/amazon/ea/sidecar/def/data/ArabicLanguageHelper;->ARABIC_CHAR_SET:[Ljava/lang/Character$UnicodeBlock;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/amazon/ea/sidecar/def/data/ArabicLanguageHelper;->ARABIC_SET:Ljava/util/HashSet;

    return-void
.end method

.method public static explicitTextDirection(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    .line 51
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 52
    new-instance v0, Ljava/text/Bidi;

    const/4 v1, -0x2

    invoke-direct {v0, p0, v1}, Ljava/text/Bidi;-><init>(Ljava/lang/String;I)V

    .line 53
    invoke-virtual {v0}, Ljava/text/Bidi;->baseIsLeftToRight()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "\u200e"

    .line 54
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method
