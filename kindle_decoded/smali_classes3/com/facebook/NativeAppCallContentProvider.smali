.class public Lcom/facebook/NativeAppCallContentProvider;
.super Landroid/content/ContentProvider;
.source "NativeAppCallContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/NativeAppCallContentProvider$AttachmentDataSource;
    }
.end annotation


# static fields
.field private static final ATTACHMENT_URL_BASE:Ljava/lang/String; = "content://com.facebook.app.NativeAppCallContentProvider"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final dataSource:Lcom/facebook/NativeAppCallContentProvider$AttachmentDataSource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const-class v0, Lcom/facebook/NativeAppCallContentProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/NativeAppCallContentProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 54
    new-instance v0, Lcom/facebook/NativeAppCallAttachmentStore;

    invoke-direct {v0}, Lcom/facebook/NativeAppCallAttachmentStore;-><init>()V

    invoke-direct {p0, v0}, Lcom/facebook/NativeAppCallContentProvider;-><init>(Lcom/facebook/NativeAppCallContentProvider$AttachmentDataSource;)V

    return-void
.end method

.method constructor <init>(Lcom/facebook/NativeAppCallContentProvider$AttachmentDataSource;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/facebook/NativeAppCallContentProvider;->dataSource:Lcom/facebook/NativeAppCallContentProvider$AttachmentDataSource;

    return-void
.end method

.method public static getAttachmentUrl(Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "content://com.facebook.app.NativeAppCallContentProvider"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    .line 71
    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x2

    aput-object p0, v0, p1

    const/4 p0, 0x3

    aput-object p2, v0, p0

    const-string p0, "%s%s/%s/%s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 108
    invoke-virtual {p0, p1}, Lcom/facebook/NativeAppCallContentProvider;->parseCallIdAndAttachmentName(Landroid/net/Uri;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 114
    :try_start_0
    iget-object p2, p0, Lcom/facebook/NativeAppCallContentProvider;->dataSource:Lcom/facebook/NativeAppCallContentProvider$AttachmentDataSource;

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/UUID;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, v0, p1}, Lcom/facebook/NativeAppCallContentProvider$AttachmentDataSource;->openAttachment(Ljava/util/UUID;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    const/high16 p2, 0x10000000

    .line 116
    invoke-static {p1, p2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 118
    sget-object p2, Lcom/facebook/NativeAppCallContentProvider;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got unexpected exception:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    throw p1

    .line 110
    :cond_0
    new-instance p1, Ljava/io/FileNotFoundException;

    invoke-direct {p1}, Ljava/io/FileNotFoundException;-><init>()V

    throw p1
.end method

.method parseCallIdAndAttachmentName(Landroid/net/Uri;)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/util/UUID;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 128
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "/"

    .line 129
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 131
    aget-object v1, p1, v1

    .line 132
    aget-object p1, p1, v0

    .line 133
    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 135
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
