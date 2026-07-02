.class public final synthetic Lcom/google/firebase/crashlytics/ndk/-$$Lambda$k1LMnpJLlrYtcSsQvSbPW-daMgg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/io/FileFilter;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/firebase/crashlytics/ndk/-$$Lambda$k1LMnpJLlrYtcSsQvSbPW-daMgg;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/crashlytics/ndk/-$$Lambda$k1LMnpJLlrYtcSsQvSbPW-daMgg;

    invoke-direct {v0}, Lcom/google/firebase/crashlytics/ndk/-$$Lambda$k1LMnpJLlrYtcSsQvSbPW-daMgg;-><init>()V

    sput-object v0, Lcom/google/firebase/crashlytics/ndk/-$$Lambda$k1LMnpJLlrYtcSsQvSbPW-daMgg;->INSTANCE:Lcom/google/firebase/crashlytics/ndk/-$$Lambda$k1LMnpJLlrYtcSsQvSbPW-daMgg;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    return p1
.end method
