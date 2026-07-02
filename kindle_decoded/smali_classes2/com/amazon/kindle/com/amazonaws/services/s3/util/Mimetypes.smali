.class public final Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;
.super Ljava/lang/Object;
.source "Mimetypes.java"


# static fields
.field private static final log:Lcom/amazon/kindle/com/amazonaws/logging/Log;

.field private static mimetypes:Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;


# instance fields
.field private final extensionToMimetypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    const-class v0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;

    invoke-static {v0}, Lcom/amazon/kindle/com/amazonaws/logging/LogFactory;->getLog(Ljava/lang/Class;)Lcom/amazon/kindle/com/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->log:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    const/4 v0, 0x0

    .line 65
    sput-object v0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->mimetypes:Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;

    return-void
.end method

.method constructor <init>()V
    .locals 11

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "3gp"

    const-string/jumbo v2, "video/3gpp"

    .line 77
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "application/postscript"

    const-string v2, "ai"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v2, "audio/x-aiff"

    const-string v3, "aif"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v3, "aifc"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v3, "aiff"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v2, "text/plain"

    const-string v3, "asc"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v3, "atom"

    const-string v4, "application/atom+xml"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v3, "audio/basic"

    const-string v4, "au"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v4, "avi"

    const-string/jumbo v5, "video/x-msvideo"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v4, "bcpio"

    const-string v5, "application/x-bcpio"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v4, "application/octet-stream"

    const-string v5, "bin"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v5, "bmp"

    const-string v6, "image/bmp"

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v5, "application/x-netcdf"

    const-string v6, "cdf"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v6, "cgm"

    const-string v7, "image/cgm"

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v6, "class"

    invoke-virtual {v0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v6, "cpio"

    const-string v7, "application/x-cpio"

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v6, "cpt"

    const-string v7, "application/mac-compactpro"

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v6, "csh"

    const-string v7, "application/x-csh"

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v6, "css"

    const-string v7, "text/css"

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v6, "application/x-director"

    const-string v7, "dcr"

    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string/jumbo v7, "video/x-dv"

    const-string v8, "dif"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v8, "dir"

    invoke-virtual {v0, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v8, "image/vnd.djvu"

    const-string v9, "djv"

    invoke-virtual {v0, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v9, "djvu"

    invoke-virtual {v0, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v8, "dll"

    invoke-virtual {v0, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v8, "dmg"

    invoke-virtual {v0, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v8, "dms"

    invoke-virtual {v0, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v8, "doc"

    const-string v9, "application/msword"

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v8, "dtd"

    const-string v9, "application/xml-dtd"

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v8, "dv"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v7, "dvi"

    const-string v8, "application/x-dvi"

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v7, "dxr"

    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v6, "eps"

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v6, "etx"

    const-string v7, "text/x-setext"

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v6, "exe"

    invoke-virtual {v0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v6, "ez"

    const-string v7, "application/andrew-inset"

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v6, "flv"

    const-string/jumbo v7, "video/x-flv"

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v6, "gif"

    const-string v7, "image/gif"

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v6, "gram"

    const-string v7, "application/srgs"

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v6, "grxml"

    const-string v7, "application/srgs+xml"

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v6, "gtar"

    const-string v7, "application/x-gtar"

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v6, "gz"

    const-string v7, "application/x-gzip"

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v6, "hdf"

    const-string v7, "application/x-hdf"

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v6, "hqx"

    const-string v7, "application/mac-binhex40"

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v6, "text/html"

    const-string v7, "htm"

    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v7, "html"

    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v6, "ice"

    const-string/jumbo v7, "x-conference/x-cooltalk"

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v6, "ico"

    const-string v7, "image/x-icon"

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v6, "text/calendar"

    const-string v7, "ics"

    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v7, "ief"

    const-string v8, "image/ief"

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v7, "ifb"

    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v6, "model/iges"

    const-string v7, "iges"

    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v7, "igs"

    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v6, "jnlp"

    const-string v7, "application/x-java-jnlp-file"

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v6, "jp2"

    const-string v7, "image/jp2"

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v6, "image/jpeg"

    const-string v7, "jpe"

    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v7, "jpeg"

    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v7, "jpg"

    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v6, "js"

    const-string v7, "application/x-javascript"

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v6, "audio/midi"

    const-string v7, "kar"

    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v7, "latex"

    const-string v8, "application/x-latex"

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v7, "lha"

    invoke-virtual {v0, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v7, "lzh"

    invoke-virtual {v0, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v7, "m3u"

    const-string v8, "audio/x-mpegurl"

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v7, "audio/mp4a-latm"

    const-string v8, "m4a"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v8, "m4p"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v7, "m4u"

    const-string/jumbo v8, "video/vnd.mpegurl"

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v7, "m4v"

    const-string/jumbo v8, "video/x-m4v"

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v7, "image/x-macpaint"

    const-string v8, "mac"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v8, "man"

    const-string v9, "application/x-troff-man"

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v8, "mathml"

    const-string v9, "application/mathml+xml"

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v8, "me"

    const-string v9, "application/x-troff-me"

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v8, "model/mesh"

    const-string v9, "mesh"

    invoke-virtual {v0, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v9, "mid"

    invoke-virtual {v0, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v9, "midi"

    invoke-virtual {v0, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v6, "mif"

    const-string v9, "application/vnd.mif"

    invoke-virtual {v0, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v6, "mov"

    const-string/jumbo v9, "video/quicktime"

    invoke-virtual {v0, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v6, "movie"

    const-string/jumbo v9, "video/x-sgi-movie"

    invoke-virtual {v0, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v6, "audio/mpeg"

    const-string v9, "mp2"

    invoke-virtual {v0, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v9, "mp3"

    invoke-virtual {v0, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v9, "mp4"

    const-string/jumbo v10, "video/mp4"

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string/jumbo v9, "video/mpeg"

    const-string v10, "mpe"

    invoke-virtual {v0, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v10, "mpeg"

    invoke-virtual {v0, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v10, "mpg"

    invoke-virtual {v0, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v9, "mpga"

    invoke-virtual {v0, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v6, "ms"

    const-string v9, "application/x-troff-ms"

    invoke-virtual {v0, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v6, "msh"

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v6, "mxu"

    const-string/jumbo v9, "video/vnd.mpegurl"

    invoke-virtual {v0, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v6, "nc"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v5, "oda"

    const-string v6, "application/oda"

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v5, "ogg"

    const-string v6, "application/ogg"

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v5, "ogv"

    const-string/jumbo v6, "video/ogv"

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v5, "pbm"

    const-string v6, "image/x-portable-bitmap"

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v5, "image/pict"

    const-string v6, "pct"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v6, "pdb"

    const-string v9, "chemical/x-pdb"

    invoke-virtual {v0, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v6, "pdf"

    const-string v9, "application/pdf"

    invoke-virtual {v0, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v6, "pgm"

    const-string v9, "image/x-portable-graymap"

    invoke-virtual {v0, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v6, "pgn"

    const-string v9, "application/x-chess-pgn"

    invoke-virtual {v0, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v6, "pic"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v6, "pict"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v5, "png"

    const-string v6, "image/png"

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v5, "pnm"

    const-string v6, "image/x-portable-anymap"

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v5, "pnt"

    invoke-virtual {v0, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v5, "pntg"

    invoke-virtual {v0, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v5, "ppm"

    const-string v6, "image/x-portable-pixmap"

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v5, "ppt"

    const-string v6, "application/vnd.ms-powerpoint"

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v5, "ps"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "qt"

    const-string/jumbo v5, "video/quicktime"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "qti"

    const-string v5, "image/x-quicktime"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "qtif"

    const-string v5, "image/x-quicktime"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "ra"

    const-string v5, "audio/x-pn-realaudio"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "ram"

    const-string v5, "audio/x-pn-realaudio"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "ras"

    const-string v5, "image/x-cmu-raster"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "rdf"

    const-string v5, "application/rdf+xml"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "rgb"

    const-string v5, "image/x-rgb"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "rm"

    const-string v5, "application/vnd.rn-realmedia"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "application/x-troff"

    const-string v5, "roff"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v5, "rtf"

    const-string v6, "text/rtf"

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v5, "rtx"

    const-string v6, "text/richtext"

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v5, "sgm"

    const-string v6, "text/sgml"

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v5, "sgml"

    const-string v6, "text/sgml"

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v5, "sh"

    const-string v6, "application/x-sh"

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v5, "shar"

    const-string v6, "application/x-shar"

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v5, "silo"

    invoke-virtual {v0, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v5, "sit"

    const-string v6, "application/x-stuffit"

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v5, "application/x-koan"

    const-string v6, "skd"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v6, "skm"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v6, "skp"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v6, "skt"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v5, "smi"

    const-string v6, "application/smil"

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v5, "smil"

    const-string v6, "application/smil"

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v5, "snd"

    invoke-virtual {v0, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v3, "so"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v3, "spl"

    const-string v4, "application/x-futuresplash"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v3, "src"

    const-string v4, "application/x-wais-source"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v3, "sv4cpio"

    const-string v4, "application/x-sv4cpio"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v3, "sv4crc"

    const-string v4, "application/x-sv4crc"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v3, "svg"

    const-string v4, "image/svg+xml"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v3, "swf"

    const-string v4, "application/x-shockwave-flash"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v3, "t"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v3, "tar"

    const-string v4, "application/x-tar"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v3, "tcl"

    const-string v4, "application/x-tcl"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v3, "tex"

    const-string v4, "application/x-tex"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v3, "texi"

    const-string v4, "application/x-texinfo"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v3, "texinfo"

    const-string v4, "application/x-texinfo"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v3, "tif"

    const-string v4, "image/tiff"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v3, "tiff"

    const-string v4, "image/tiff"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string/jumbo v3, "tr"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "tsv"

    const-string v3, "text/tab-separated-values"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "txt"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "ustar"

    const-string v2, "application/x-ustar"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "vcd"

    const-string v2, "application/x-cdlink"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "vrml"

    const-string v2, "model/vrml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "vxml"

    const-string v2, "application/voicexml+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "wav"

    const-string v2, "audio/x-wav"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "wbmp"

    const-string v2, "image/vnd.wap.wbmp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "wbxml"

    const-string v2, "application/vnd.wap.wbxml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "webm"

    const-string/jumbo v2, "video/webm"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "wml"

    const-string v2, "text/vnd.wap.wml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "wmlc"

    const-string v2, "application/vnd.wap.wmlc"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "wmls"

    const-string v2, "text/vnd.wap.wmlscript"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "wmlsc"

    const-string v2, "application/vnd.wap.wmlscriptc"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "wmv"

    const-string/jumbo v2, "video/x-ms-wmv"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "wrl"

    const-string v2, "model/vrml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "xbm"

    const-string v2, "image/x-xbitmap"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "xht"

    const-string v2, "application/xhtml+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "xhtml"

    const-string v2, "application/xhtml+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "xls"

    const-string v2, "application/vnd.ms-excel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "xml"

    const-string v2, "application/xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "xpm"

    const-string v2, "image/x-xpixmap"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "xsl"

    const-string v2, "application/xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "xslt"

    const-string v2, "application/xslt+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "xul"

    const-string v2, "application/vnd.mozilla.xul+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "xwd"

    const-string v2, "image/x-xwindowdump"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "xyz"

    const-string v2, "chemical/x-xyz"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "zip"

    const-string v2, "application/zip"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;
    .locals 7

    const-class v0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;

    monitor-enter v0

    .line 267
    :try_start_0
    sget-object v1, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->mimetypes:Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;

    if-eqz v1, :cond_0

    .line 268
    sget-object v1, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->mimetypes:Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 270
    :cond_0
    :try_start_1
    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;

    invoke-direct {v1}, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;-><init>()V

    sput-object v1, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->mimetypes:Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;

    .line 271
    sget-object v1, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->log:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    invoke-interface {v1}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 272
    sget-object v1, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->mimetypes:Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;

    iget-object v1, v1, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    .line 273
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 274
    sget-object v4, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->log:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Setting mime type for extension \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\' to \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 274
    invoke-interface {v4, v3}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_0

    .line 278
    :cond_1
    sget-object v1, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->mimetypes:Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getMimetype(Ljava/io/File;)Ljava/lang/String;
    .locals 0

    .line 382
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->getMimetype(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMimetype(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "."

    .line 341
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, "application/octet-stream"

    if-lez v0, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 342
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 343
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/com/amazonaws/util/StringUtils;->lowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 344
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "\'"

    if-eqz v0, :cond_1

    .line 345
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 346
    sget-object v1, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->log:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    invoke-interface {v1}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 347
    sget-object v1, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->log:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Recognised extension \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\', mimetype is: \'"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_0
    return-object v0

    .line 351
    :cond_1
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->log:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    invoke-interface {v0}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 352
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->log:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Extension \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' is unrecognized in mime type listing, using default mime type: \'"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_0

    .line 357
    :cond_2
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->log:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    invoke-interface {v0}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 358
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->log:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File name has no extension, mime type cannot be recognised for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-object v1
.end method
