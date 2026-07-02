.class public Lcom/amazon/ebook/util/ResourceBundleUtil;
.super Ljava/lang/Object;


# static fields
.field public static final ROOT_LOCALE:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/Locale;

    const-string v1, ""

    invoke-direct {v0, v1, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/ebook/util/ResourceBundleUtil;->ROOT_LOCALE:Ljava/util/Locale;

    return-void
.end method

.method public static getBundleNoDefaultLocaleInFallback(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;
    .locals 3

    invoke-static {p0, p1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ResourceBundle;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/amazon/ebook/util/ResourceBundleUtil;->ROOT_LOCALE:Ljava/util/Locale;

    invoke-static {p0, p1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v0

    :cond_0
    return-object v0
.end method
