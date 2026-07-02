.class Lcom/amazon/whispersync/device/crashmanager/ExtractJavaVersionHeaderProcessor;
.super Ljava/lang/Object;
.source "ExtractJavaVersionHeaderProcessor.java"

# interfaces
.implements Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;


# static fields
.field private static final JAVA_APP_VERSION_REGEX:Ljava/util/regex/Pattern;


# instance fields
.field private final mNextProcessor:Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "^\\S+\\s+v(\\d+)\\s+\\((.+)\\)$"

    .line 19
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/device/crashmanager/ExtractJavaVersionHeaderProcessor;->JAVA_APP_VERSION_REGEX:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/amazon/whispersync/device/crashmanager/ExtractJavaVersionHeaderProcessor;->mNextProcessor:Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;

    return-void
.end method


# virtual methods
.method public process(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 31
    sget-object v0, Lcom/amazon/whispersync/device/crashmanager/ExtractJavaVersionHeaderProcessor;->JAVA_APP_VERSION_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    iget-object v1, p0, Lcom/amazon/whispersync/device/crashmanager/ExtractJavaVersionHeaderProcessor;->mNextProcessor:Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Version"

    invoke-interface {v1, v2, v0, p3}, Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;->process(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)V

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/device/crashmanager/ExtractJavaVersionHeaderProcessor;->mNextProcessor:Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;

    invoke-interface {v0, p1, p2, p3}, Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;->process(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)V

    return-void
.end method
